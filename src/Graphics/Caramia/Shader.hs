-- | Shaders.
--
-- This module lets you use GLSL shaders in rendering.
--
-- This abstracts OpenGL shaders and shader objects. In the future, we might
-- implement separate shader programs (that is,
-- GL_ARB_separate_shader_objects).
--
-- At the moment, you need to use explicit attribute locations in shaders
-- themselves. There is no functionality to retrieve attribute locations in
-- this API; you simply have to know them.
--
-- <https://www.opengl.org/wiki/OpenGL_Shading_Language>
--

-- TODO: separable program objects. This is an extension and only became core
-- in OpenGL 4.1 (GL_ARB_separate_shader_objects). As of writing of this, I
-- think it's not prime time to use those yet. Maybe in a few years.
--

{-# LANGUAGE NoImplicitPrelude, FlexibleInstances, DeriveDataTypeable #-}
{-# LANGUAGE ExistentialQuantification, ViewPatterns, OverloadedStrings #-}
{-# LANGUAGE FlexibleContexts, ConstraintKinds #-}

module Graphics.Caramia.Shader
    ( newShader
    , newShaderB
    , newShaderBL
    , newPipeline
    , newPipelineVF
    , Shader()
    , Pipeline()
      -- * Uniforms
    , setUniform
    , getUniformLocation
    , Uniformable()
    , UniformLocation
      -- * Shader stages
    , ShaderStage(..)
      -- * Views
    , viewStage
      -- * Misc
    , nopPipeline
      -- * Exception
    , ShaderCompilationError(..)
    , ShaderLinkingError(..)
    , ShaderBuildingError(..)
    )
    where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Shader.Internal

import Graphics.Caramia.Context
import Graphics.Caramia.Context.Internal
import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.FlextGLReader
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Graphics.Caramia.Math

import GHC.Float ( double2Float )

import Control.Monad.Catch
import Control.Monad.Reader
import Foreign
import Foreign.C.Types
import qualified Data.ByteString as B
import qualified Data.ByteString.Unsafe as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Foreign as T

type UniformLocation = Int

-- TODO: add tesselation shaders

toConstant :: ShaderStage -> GLenum
toConstant Vertex = gl_VERTEX_SHADER
toConstant Fragment = gl_FRAGMENT_SHADER
toConstant Geometry = gl_GEOMETRY_SHADER

-- | Thrown when either a compilation or linking error occurs.
data ShaderBuildingError = forall e. Exception e => ShaderBuildingError e
                           deriving ( Typeable )

instance Show ShaderBuildingError where
    show (ShaderBuildingError e) = show e

-- | Thrown when a shader compilation error occurs. The text is the error log
-- for compilation.
--
-- Can also be caught as `ShaderBuildingError`.
data ShaderCompilationError = ShaderCompilationError !T.Text
                              deriving ( Eq, Typeable, Show )

-- | Thrown when a shader linking error occurs. The text is the error log for
-- linking.
--
-- Can also be caught as `ShaderBuildingError`.
data ShaderLinkingError = ShaderLinkingError !T.Text
                          deriving ( Eq, Typeable, Show )

instance Exception ShaderBuildingError

shaderExceptionToException :: Exception e => e -> SomeException
shaderExceptionToException = toException . ShaderBuildingError

shaderExceptionFromException :: Exception e => SomeException -> Maybe e
shaderExceptionFromException exc = do
    ShaderBuildingError a <- fromException exc
    cast a

instance Exception ShaderCompilationError where
    toException = shaderExceptionToException
    fromException = shaderExceptionFromException

instance Exception ShaderLinkingError where
    toException = shaderExceptionToException
    fromException = shaderExceptionFromException

-- | Sets a uniform in a pipeline.
setUniform :: Uniformable a
           => a
           -> UniformLocation
           -> Pipeline s
           -> Context s ()
setUniform uniformable location pipeline =
    withResource (resourcePL pipeline) $ \(Pipeline_ program) -> do
        liftFlextGLM $ do
            gl <- askGL
            liftIO $ setUniform_ gl program (safeFromIntegral location) uniformable
{-# INLINE [1] setUniform #-}

newShaderGeneric :: Ptr CChar
                 -> Int
                 -> ShaderStage
                 -> Context s (Shader s)
newShaderGeneric source_code_ptr source_code_len stage = mask_ $ do
    gl <- ask
    res <- newResource create
                       (deleter gl)
                       (return ())
    nid <- liftIO $ atomicModifyIORef' shaderIdentifierSupply $ \old ->
        ( old + 1, old )
    return Shader { resource = res
                  , identifier = nid
                  , viewStage = stage }
  where
    deleter gl (CompiledShader shader) =
       F.glDeleteShader shader gl

    create = do
        gl <- ask
        shader_name <- glCreateShader (toConstant stage)
        liftIO $ with source_code_ptr $ \cstr_ptr ->
            with (fromIntegral source_code_len :: GLint) $ \len_ptr ->
                F.glShaderSource
                    shader_name
                    1
                    cstr_ptr
                    len_ptr
                    gl

        glCompileShader shader_name
        checkCompilationErrors shader_name
        return $ CompiledShader shader_name

-- | Creates a shader from GLSL shader source, using a strict bytestring.
newShaderB :: B.ByteString
           -> ShaderStage
           -> Context s (Shader s)
newShaderB source_code stage = do
    st <- contextState
    liftIO $ B.unsafeUseAsCStringLen source_code $ \(cstr, len) ->
        unsafeResumeContext st $ newShaderGeneric cstr len stage

-- | Creates a shader from GLSL shader source, using a lazy bytestring.
--
-- The bytestring will be forced and converted to a strict bytestring
-- internally, so this is not so efficient, if you care about storage
-- efficiency in shader compilation.
newShaderBL :: BL.ByteString
            -> ShaderStage
            -> Context s (Shader s)
newShaderBL source_code = newShaderB (BL.toStrict source_code)

-- | Creates a shader from GLSL shader source, encoding a Text into an UTF-8
-- string.
--
-- This can throw `ShaderCompilationError` if compilation fails.
newShader :: T.Text      -- ^ The shader source code.
          -> ShaderStage
          -> Context s (Shader s)
newShader source_code stage = do
    st <- contextState
    liftIO $ T.withCStringLen source_code $ \(cstr, len) ->
        unsafeResumeContext st $ newShaderGeneric cstr len stage

-- | Checks that there are no compilation errors in an OpenGL shader object.
--
-- DELETES the shader if there were errors.
checkCompilationErrors :: GLuint -> Context s ()
checkCompilationErrors shader_name = do
    gl <- ask
    status <- liftIO $ gget gl $ F.glGetShaderiv shader_name gl_COMPILE_STATUS
    when (status == fromIntegral gl_FALSE) $ do
        log_len <- liftIO $ gget gl $ F.glGetShaderiv shader_name gl_INFO_LOG_LENGTH
        st <- contextState
        liftIO $ allocaBytes (safeFromIntegral log_len) $ \str -> unsafeResumeContext st $ do
            glGetShaderInfoLog shader_name log_len nullPtr str
            log <- liftIO $
                   T.peekCStringLen ( str
                                    , safeFromIntegral $ max 0 $ log_len-1 )
            glDeleteShader shader_name
            throwM $ ShaderCompilationError log

-- | Same as `checkCompilationErrors` but for linking.
--
-- DELETES the program if there were errors.
checkLinkingErrors :: GLuint -> Context s ()
checkLinkingErrors program_name = do
    gl <- ask
    status <- liftIO $ gget gl $ F.glGetProgramiv program_name gl_LINK_STATUS
    when (status == fromIntegral gl_FALSE) $ do
        log_len <- liftIO $ gget gl $ F.glGetProgramiv program_name gl_INFO_LOG_LENGTH
        st <- contextState
        liftIO $ allocaBytes (safeFromIntegral log_len) $ \str -> unsafeResumeContext st $ do
            glGetProgramInfoLog program_name log_len nullPtr str
            log <- liftIO $ T.peekCStringLen ( str
                                             , safeFromIntegral $
                                               max 0 $ log_len-1)
            glDeleteProgram program_name
            throwM $ ShaderLinkingError log

-- | Creates a pipeline from vertex and fragment shader source.
--
-- This is a convenience function for a common use case.
newPipelineVF :: T.Text      -- ^ Vertex shader source.
              -> T.Text      -- ^ Fragment shader source.
              -> Context s (Pipeline s)
newPipelineVF vert_src frag_src = do
    vsh <- newShader vert_src Vertex
    fsh <- newShader frag_src Fragment
    newPipeline [vsh, fsh]

-- | Creates a pipeline composed of different shaders.
newPipeline :: [Shader s] -> Context s (Pipeline s)
newPipeline = newTraditionalPipeline

newTraditionalPipeline :: [Shader s] -> Context s (Pipeline s)
newTraditionalPipeline shaders = mask_ $ do
    gl <- liftFlextGLM askGL

    res <- newResource creator
                       (deleter gl)
                       (return ())
    nid <- liftIO $ atomicModifyIORef' shaderIdentifierSupply $ \old ->
        ( old+1, old )

    return Pipeline { resourcePL = res
                    , pipelineIdentifier = nid
                    , shaders = shaders }
  where
    creator = do
        program <- glCreateProgram
        for_ shaders $ \shader ->
            withResource (resource shader) $ \(CompiledShader sname) ->
                glAttachShader program sname

        glLinkProgram program
        checkLinkingErrors program
        return $ Pipeline_ program

    deleter gl (Pipeline_ program) = F.glDeleteProgram program gl

gget :: Storable a => FlextGL -> (Ptr a -> FlextGL -> IO ()) -> IO a
gget gl action = alloca $ \ptr -> action ptr gl >> peek ptr

-- | Class of data types that can be set to a uniform in a shader pipeline.
--
-- We provide instances for large integer values (such as `Integer`) but you
-- should know that uniforms are rarely larger than 32-bit. We throw a user
-- error if you pass a value that is larger than what the OpenGL API can accept
-- (which is 2^32-1 for unsigned integer types and 2^31-1 for signed integer
-- types).
class Uniformable a where
    setUniform_ :: FlextGL -> GLuint -> GLint -> a -> IO ()

type USetter1 a = FlextGL -> GLuint -> GLint -> a -> IO ()
type USetter2 a = FlextGL -> GLuint -> GLint -> (a, a) -> IO ()
type USetter3 a = FlextGL -> GLuint -> GLint -> (a, a, a) -> IO ()
type USetter4 a = FlextGL -> GLuint -> GLint -> (a, a, a, a) -> IO ()

setUi1 :: Integral a => USetter1 a
setUi1 gl program loc w =
    runFlextGLM gl $ mglProgramUniform1ui program loc (safeFromIntegral w)
{-# INLINE setUi1 #-}

setUi2 :: Integral a => USetter2 a
setUi2 gl program loc (w1, w2) =
    runFlextGLM gl $ mglProgramUniform2ui program loc (safeFromIntegral w1
                                                      ,safeFromIntegral w2)
{-# INLINE setUi2 #-}

setUi3 :: Integral a => USetter3 a
setUi3 gl program loc (w1, w2, w3) =
    runFlextGLM gl $
    mglProgramUniform3ui program loc (safeFromIntegral w1
                                     ,safeFromIntegral w2
                                     ,safeFromIntegral w3)
{-# INLINE setUi3 #-}

setUi4 :: Integral a => USetter4 a
setUi4 gl program loc (w1, w2, w3, w4) =
    runFlextGLM gl $
    mglProgramUniform4ui program loc (safeFromIntegral w1
                                     ,safeFromIntegral w2
                                     ,safeFromIntegral w3
                                     ,safeFromIntegral w4)
{-# INLINE setUi4 #-}

setI1 :: Integral a => USetter1 a
setI1 gl program loc w =
    runFlextGLM gl $
    mglProgramUniform1i program loc (safeFromIntegral w)
{-# INLINE setI1 #-}

setI2 :: Integral a => USetter2 a
setI2 gl program loc (w1, w2) =
    runFlextGLM gl $
    mglProgramUniform2i program loc (safeFromIntegral w1
                                    ,safeFromIntegral w2)
{-# INLINE setI2 #-}

setI3 :: Integral a => USetter3 a
setI3 gl program loc (w1, w2, w3) =
    runFlextGLM gl $
    mglProgramUniform3i program loc (safeFromIntegral w1
                                    ,safeFromIntegral w2
                                    ,safeFromIntegral w3)
{-# INLINE setI3 #-}

setI4 :: Integral a => USetter4 a
setI4 gl program loc (w1, w2, w3, w4) =
    runFlextGLM gl $
    mglProgramUniform4i program loc (safeFromIntegral w1
                                    ,safeFromIntegral w2
                                    ,safeFromIntegral w3
                                    ,safeFromIntegral w4)
{-# INLINE setI4 #-}

instance Uniformable Word8 where
    setUniform_ = setUi1
instance Uniformable (Word8, Word8) where
    setUniform_ = setUi2
instance Uniformable (Word8, Word8, Word8) where
    setUniform_ = setUi3
instance Uniformable (Word8, Word8, Word8, Word8) where
    setUniform_ = setUi4
instance Uniformable Word16 where
    setUniform_ = setUi1
instance Uniformable (Word16, Word16) where
    setUniform_ = setUi2
instance Uniformable (Word16, Word16, Word16) where
    setUniform_ = setUi3
instance Uniformable (Word16, Word16, Word16, Word16) where
    setUniform_ = setUi4
instance Uniformable Word32 where
    setUniform_ = setUi1
instance Uniformable (Word32, Word32) where
    setUniform_ = setUi2
instance Uniformable (Word32, Word32, Word32) where
    setUniform_ = setUi3
instance Uniformable (Word32, Word32, Word32, Word32) where
    setUniform_ = setUi4
instance Uniformable Word64 where
    setUniform_ = setUi1
instance Uniformable (Word64, Word64) where
    setUniform_ = setUi2
instance Uniformable (Word64, Word64, Word64) where
    setUniform_ = setUi3
instance Uniformable (Word64, Word64, Word64, Word64) where
    setUniform_ = setUi4
instance Uniformable CUInt where
    setUniform_ = setUi1
instance Uniformable (CUInt, CUInt) where
    setUniform_ = setUi2
instance Uniformable (CUInt, CUInt, CUInt) where
    setUniform_ = setUi3
instance Uniformable (CUInt, CUInt, CUInt, CUInt) where
    setUniform_ = setUi4
instance Uniformable CInt where
    setUniform_ = setI1
instance Uniformable (CInt, CInt) where
    setUniform_ = setI2
instance Uniformable (CInt, CInt, CInt) where
    setUniform_ = setI3
instance Uniformable (CInt, CInt, CInt, CInt) where
    setUniform_ = setI4

instance Uniformable Int8 where
    setUniform_ = setI1
instance Uniformable (Int8, Int8) where
    setUniform_ = setI2
instance Uniformable (Int8, Int8, Int8) where
    setUniform_ = setI3
instance Uniformable (Int8, Int8, Int8, Int8) where
    setUniform_ = setI4
instance Uniformable Int16 where
    setUniform_ = setI1
instance Uniformable (Int16, Int16) where
    setUniform_ = setI2
instance Uniformable (Int16, Int16, Int16) where
    setUniform_ = setI3
instance Uniformable (Int16, Int16, Int16, Int16) where
    setUniform_ = setI4
instance Uniformable Int32 where
    setUniform_ = setI1
instance Uniformable (Int32, Int32) where
    setUniform_ = setI2
instance Uniformable (Int32, Int32, Int32) where
    setUniform_ = setI3
instance Uniformable (Int32, Int32, Int32, Int32) where
    setUniform_ = setI4
instance Uniformable Int64 where
    setUniform_ = setI1
instance Uniformable (Int64, Int64) where
    setUniform_ = setI2
instance Uniformable (Int64, Int64, Int64) where
    setUniform_ = setI3
instance Uniformable (Int64, Int64, Int64, Int64) where
    setUniform_ = setI4
instance Uniformable Int where
    setUniform_ = setI1
instance Uniformable (Int, Int) where
    setUniform_ = setI2
instance Uniformable (Int, Int, Int) where
    setUniform_ = setI3
instance Uniformable (Int, Int, Int, Int) where
    setUniform_ = setI4
instance Uniformable Integer where
    setUniform_ = setI1
instance Uniformable (Integer, Integer) where
    setUniform_ = setI2
instance Uniformable (Integer, Integer, Integer) where
    setUniform_ = setI3
instance Uniformable (Integer, Integer, Integer, Integer) where
    setUniform_ = setI4
instance Uniformable Float where
    setUniform_ gl program loc f1 =
        runFlextGLM gl $
        mglProgramUniform1f program loc (CFloat f1)
instance Uniformable (Float, Float) where
    setUniform_ gl program loc (f1, f2) =
        runFlextGLM gl $
        mglProgramUniform2f program loc (CFloat f1, CFloat f2)
instance Uniformable (Float, Float, Float) where
    setUniform_ gl program loc (f1, f2, f3) =
        runFlextGLM gl $
        mglProgramUniform3f program loc
                            (CFloat f1
                            ,CFloat f2
                            ,CFloat f3)
instance Uniformable (Float, Float, Float, Float) where
    setUniform_ gl program loc (f1, f2, f3, f4) =
        runFlextGLM gl $
        mglProgramUniform4f program loc
                            (CFloat f1
                            ,CFloat f2
                            ,CFloat f3
                            ,CFloat f4)
instance Uniformable CFloat where
    setUniform_ gl program loc f1 =
        runFlextGLM gl $
        mglProgramUniform1f program loc f1
instance Uniformable (CFloat, CFloat) where
    setUniform_ gl program loc (f1, f2) =
        runFlextGLM gl $
        mglProgramUniform2f program loc (f1, f2)
instance Uniformable (CFloat, CFloat, CFloat) where
    setUniform_ gl program loc (f1, f2, f3) =
        runFlextGLM gl $
        mglProgramUniform3f program loc (f1, f2, f3)
instance Uniformable (CFloat, CFloat, CFloat, CFloat) where
    setUniform_ gl program loc (f1, f2, f3, f4) =
        runFlextGLM gl $
        mglProgramUniform4f program loc (f1, f2, f3, f4)

instance Uniformable Double where
    setUniform_ gl program loc f1 =
        runFlextGLM gl $
        mglProgramUniform1f program loc (double2CFloat f1)
instance Uniformable (Double, Double) where
    setUniform_ gl program loc (f1, f2) =
        runFlextGLM gl $
        mglProgramUniform2f program loc (double2CFloat f1, double2CFloat f2)
instance Uniformable (Double, Double, Double) where
    setUniform_ gl program loc (f1, f2, f3) =
        runFlextGLM gl $
        mglProgramUniform3f program loc
                            (double2CFloat f1
                            ,double2CFloat f2
                            ,double2CFloat f3)
instance Uniformable (Double, Double, Double, Double) where
    setUniform_ gl program loc (f1, f2, f3, f4) =
        runFlextGLM gl $
        mglProgramUniform4f program loc
                            (double2CFloat f1
                            ,double2CFloat f2
                            ,double2CFloat f3
                            ,double2CFloat f4)
instance Uniformable CDouble where
    setUniform_ gl program loc f1 =
        runFlextGLM gl $
        mglProgramUniform1f program loc (cdouble2CFloat f1)
instance Uniformable (CDouble, CDouble) where
    setUniform_ gl program loc (f1, f2) =
        runFlextGLM gl $
        mglProgramUniform2f program loc (cdouble2CFloat f1, cdouble2CFloat f2)
instance Uniformable (CDouble, CDouble, CDouble) where
    setUniform_ gl program loc (f1, f2, f3) =
        runFlextGLM gl $
        mglProgramUniform3f program loc
                            (cdouble2CFloat f1
                            ,cdouble2CFloat f2
                            ,cdouble2CFloat f3)
instance Uniformable (CDouble, CDouble, CDouble, CDouble) where
    setUniform_ gl program loc (f1, f2, f3, f4) =
        runFlextGLM gl $
        mglProgramUniform4f program loc
                            (cdouble2CFloat f1
                            ,cdouble2CFloat f2
                            ,cdouble2CFloat f3
                            ,cdouble2CFloat f4)

instance Uniformable Vector3 where
    setUniform_ gl program loc (toTuple3 -> tuple) =
        setUniform_ gl program loc tuple

instance Uniformable Quaternion where
    setUniform_ gl program loc (toTupleq -> tuple) =
        setUniform_ gl program loc tuple

instance Uniformable Matrix33 where
    setUniform_ gl program loc m33 =
        withMatrix33Ptr m33 $ \ptr ->
            runFlextGLM gl $
                mglProgramUniformMatrix3fv program loc
                                           (1, fromIntegral gl_FALSE, ptr)

instance Uniformable Matrix44 where
    setUniform_ gl program loc m44 =
        withMatrix44Ptr m44 $ \ptr ->
            runFlextGLM gl $
                mglProgramUniformMatrix4fv program loc
                                           (1, fromIntegral gl_FALSE, ptr)

-- these are for RULES firing
newtype Transpose33 = Transpose33 Matrix33
newtype Transpose44 = Transpose44 Matrix44

instance Uniformable Transpose33 where
    setUniform_ gl program loc (Transpose33 m33) =
        withMatrix33Ptr m33 $ \ptr ->
            runFlextGLM gl $
                mglProgramUniformMatrix3fv program loc
                                           (1, fromIntegral gl_TRUE, ptr)

instance Uniformable Transpose44 where
    setUniform_ gl program loc (Transpose44 m44) =
        withMatrix44Ptr m44 $ \ptr ->
            runFlextGLM gl $
                mglProgramUniformMatrix4fv program loc
                                           (1, fromIntegral gl_TRUE, ptr)

double2CFloat :: Double -> CFloat
double2CFloat dbl = CFloat $ double2Float dbl

cdouble2CFloat :: CDouble -> CFloat
cdouble2CFloat (CDouble dbl) = CFloat $ double2Float dbl

{-# RULES "transpose/glProgramUniformMatrix3fv" forall (a :: Matrix33) b c.
        setUniform (transpose33 a) b c =
        setUniform (Transpose33 a) b c #-}

{-# RULES "transpose/glProgramUniformMatrix4fv" forall (a :: Matrix44) b c.
        setUniform (transpose44 a) b c =
        setUniform (Transpose44 a) b c #-}

-- | Returns a uniform location for a given name.
--
-- The uniform may not be in the shader or it may not be active. If this
-- happens, a special uniform location is returned that can be used in
-- `setUniform` to make it do nothing.
getUniformLocation :: T.Text -> Pipeline s -> Context s UniformLocation
getUniformLocation name pipeline = fromIntegral <$> do
    gl <- liftFlextGLM askGL
    withResource (resourcePL pipeline) (\(Pipeline_ program) ->
         liftIO $ B.useAsCString (T.encodeUtf8 name) $ \cstr ->
             F.glGetUniformLocation program cstr gl)

-- context local pipeline
newtype CLNopPipeline s = CLNopPipeline { unwrapCLNop :: Pipeline s }
                          deriving ( Typeable )

-- | Returns a pipeline that does not do anything.
--
-- Within the same context, this returns the same pipeline for each invocation.
nopPipeline :: Typeable s => Context s (Pipeline s)
nopPipeline =
    unwrapCLNop <$> retrieveContextLocalData (CLNopPipeline <$> cr)
  where
    cr = do
        vsh <- newShader vsh_src Vertex
        fsh <- newShader fsh_src Fragment
        newPipeline [vsh, fsh]
      where
        vsh_src = "#version 330\nvoid main() { }\n"
        fsh_src = "#version 330\nvoid main() { }\n"

