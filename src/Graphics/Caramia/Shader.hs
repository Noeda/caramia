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

module Graphics.Caramia.Shader
    (
    -- * Creating new shaders.
      newShader
    , newShaderB
    , newShaderBL
    , newPipeline
    , newPipelineVF
    , Shader()
    , Pipeline()
    -- ** Attribute bindings
    , AttributeBindings
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

import Control.Lens ( ifor_ )
import Control.Monad.Catch
import Control.Monad.IO.Class
import qualified Data.ByteString as B
import qualified Data.ByteString.Unsafe as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Map.Strict as M
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Foreign as T
import Foreign
import Foreign.C.Types
import GHC.Float ( double2Float )
import Graphics.Caramia.Color
import Graphics.Caramia.Context
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Resource
import Graphics.Caramia.Prelude
import Graphics.Caramia.Shader.Internal
import Linear.Matrix
import Linear.Quaternion
import Linear.V1
import Linear.V2
import Linear.V3
import Linear.V4

type UniformLocation = Int

-- TODO: add tesselation shaders

toConstant :: ShaderStage -> GLenum
toConstant Vertex = GL_VERTEX_SHADER
toConstant Fragment = GL_FRAGMENT_SHADER
toConstant Geometry = GL_GEOMETRY_SHADER

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
setUniform :: MonadIO m
           => Uniformable a
           => a
           -> UniformLocation
           -> Pipeline
           -> m ()
setUniform uniformable location pipeline =
    liftIO $ withResource (resourcePL pipeline) $ \(Pipeline_ program) ->
        setUniform_ program (safeFromIntegral location) uniformable
{-# INLINE [1] setUniform #-}

newShaderGeneric :: Ptr CChar
                 -> Int
                 -> ShaderStage
                 -> IO Shader
newShaderGeneric source_code_ptr source_code_len stage = liftIO $ mask_ $ do
    res <- newResource create
                       deleter
                       (return ())
    nid <- newUnique
    return Shader { resource = res
                  , identifier = nid
                  , viewStage = stage }
  where
    deleter (CompiledShader shader) =
       glDeleteShader shader

    create = do
        shader_name <- glCreateShader (toConstant stage)
        with source_code_ptr $ \cstr_ptr ->
            with (fromIntegral source_code_len :: GLint) $ \len_ptr ->
                glShaderSource
                    shader_name
                    1
                    cstr_ptr
                    len_ptr
        glCompileShader shader_name
        checkCompilationErrors shader_name
        return $ CompiledShader shader_name

-- | Creates a shader from GLSL shader source, using a strict bytestring.
newShaderB :: MonadIO m
           => B.ByteString
           -> ShaderStage
           -> m Shader
newShaderB source_code stage =
    liftIO $ B.unsafeUseAsCStringLen source_code $ \(cstr, len) ->
        newShaderGeneric cstr len stage

-- | Creates a shader from GLSL shader source, using a lazy bytestring.
--
-- The bytestring will be forced and converted to a strict bytestring
-- internally, so this is not so efficient, if you care about storage
-- efficiency in shader compilation.
newShaderBL :: MonadIO m
            => BL.ByteString
            -> ShaderStage
            -> m Shader
newShaderBL source_code = newShaderB (BL.toStrict source_code)

-- | Creates a shader from GLSL shader source, encoding a Text into an UTF-8
-- string.
--
-- This can throw `ShaderCompilationError` if compilation fails.
newShader :: MonadIO m
          => T.Text      -- ^ The shader source code.
          -> ShaderStage
          -> m Shader
newShader source_code stage = liftIO $ T.withCStringLen source_code $ \(cstr, len) ->
    newShaderGeneric cstr len stage

-- | Checks that there are no compilation errors in an OpenGL shader object.
--
-- DELETES the shader if there were errors.
checkCompilationErrors :: GLuint -> IO ()
checkCompilationErrors shader_name = do
    status <- gget $ glGetShaderiv shader_name GL_COMPILE_STATUS
    when (status == GL_FALSE) $ do
        log_len <- gget $ glGetShaderiv shader_name GL_INFO_LOG_LENGTH
        allocaBytes (safeFromIntegral log_len) $ \str -> do
            glGetShaderInfoLog shader_name log_len nullPtr str
            log <- T.peekCStringLen ( str
                                    , safeFromIntegral $ max 0 $ log_len-1 )
            glDeleteShader shader_name
            throwM $ ShaderCompilationError log

-- | Same as `checkCompilationErrors` but for linking.
--
-- DELETES the program if there were errors.
checkLinkingErrors :: GLuint -> IO ()
checkLinkingErrors program_name = do
    status <- gget $ glGetProgramiv program_name GL_LINK_STATUS
    when (status == GL_FALSE) $ do
        log_len <- gget $ glGetProgramiv program_name GL_INFO_LOG_LENGTH
        allocaBytes (safeFromIntegral log_len) $ \str -> do
            glGetProgramInfoLog program_name log_len nullPtr str
            log <- T.peekCStringLen ( str
                                    , safeFromIntegral $ max 0 $ log_len-1)
            glDeleteProgram program_name
            throwM $ ShaderLinkingError log

-- | Creates a pipeline from vertex and fragment shader source.
--
-- This is a convenience function for a common use case.
newPipelineVF :: MonadIO m
              => T.Text      -- ^ Vertex shader source.
              -> T.Text      -- ^ Fragment shader source.
              -> AttributeBindings -- ^ Attribute bindings.
              -> m Pipeline
newPipelineVF vert_src frag_src bindings = liftIO $ do
    vsh <- newShader vert_src Vertex
    fsh <- newShader frag_src Fragment
    newPipeline [vsh, fsh] bindings

-- | Binds attribute names to specific attribute indices.
--
-- See `glBindAttribLocation` from OpenGL documentation.
--
-- The `Map` is from containers and is a member of `Monoid` so you can use
-- `mempty` if you are not doing any special binding.
--
-- You can use `mapKeys` or `mapKeysMonotonic` to change the key and `fmap` to
-- map indices.
type AttributeBindings = M.Map B.ByteString GLuint

-- | Creates a pipeline composed of different shaders.
newPipeline :: MonadIO m
            => [Shader]
            -> AttributeBindings
            -> m Pipeline
newPipeline shaders attribute_bindings = liftIO $ mask_ $ do
    res <- newResource creator
                       deleter
                       (return ())
    nid <- newUnique
    return Pipeline { resourcePL = res
                    , pipelineIdentifier = nid
                    , shaders = shaders }
  where
    creator = do
        program <- glCreateProgram
        for_ shaders $ \shader ->
            withResource (resource shader) $ \(CompiledShader sname) ->
                glAttachShader program sname
        ifor_ attribute_bindings $ \key binding ->
            B.useAsCString key $ \key_cstr ->
                glBindAttribLocation program binding key_cstr
        glLinkProgram program
        checkLinkingErrors program
        return $ Pipeline_ program

    deleter (Pipeline_ program) = glDeleteProgram program

gget :: Storable a => (Ptr a -> IO ()) -> IO a
gget action = alloca $ \ptr -> action ptr >> peek ptr

-- | Class of data types that can be set to a uniform in a shader pipeline.
--
-- We provide instances for large integer values (such as `Integer`) but you
-- should know that uniforms are rarely larger than 32-bit. We throw a user
-- error if you pass a value that is larger than what the OpenGL API can accept
-- (which is 2^32-1 for unsigned integer types and 2^31-1 for signed integer
-- types).
class Uniformable a where
    setUniform_ :: GLuint -> GLint -> a -> IO ()

type USetter1 a = GLuint -> GLint -> a -> IO ()
type USetter2 a = GLuint -> GLint -> (a, a) -> IO ()
type USetter3 a = GLuint -> GLint -> (a, a, a) -> IO ()
type USetter4 a = GLuint -> GLint -> (a, a, a, a) -> IO ()

setUi1 :: Integral a => USetter1 a
setUi1 program loc w =
    mglProgramUniform1ui program loc (safeFromIntegral w)
{-# INLINE setUi1 #-}

setUi2 :: Integral a => USetter2 a
setUi2 program loc (w1, w2) =
    mglProgramUniform2ui program loc (safeFromIntegral w1)
                                     (safeFromIntegral w2)
{-# INLINE setUi2 #-}

setUi3 :: Integral a => USetter3 a
setUi3 program loc (w1, w2, w3) =
    mglProgramUniform3ui program loc (safeFromIntegral w1)
                                     (safeFromIntegral w2)
                                     (safeFromIntegral w3)
{-# INLINE setUi3 #-}

setUi4 :: Integral a => USetter4 a
setUi4 program loc (w1, w2, w3, w4) =
    mglProgramUniform4ui program loc (safeFromIntegral w1)
                                     (safeFromIntegral w2)
                                     (safeFromIntegral w3)
                                     (safeFromIntegral w4)
{-# INLINE setUi4 #-}

setI1 :: Integral a => USetter1 a
setI1 program loc w =
    mglProgramUniform1i program loc (safeFromIntegral w)
{-# INLINE setI1 #-}

setI2 :: Integral a => USetter2 a
setI2 program loc (w1, w2) =
    mglProgramUniform2i program loc (safeFromIntegral w1)
                                    (safeFromIntegral w2)
{-# INLINE setI2 #-}

setI3 :: Integral a => USetter3 a
setI3 program loc (w1, w2, w3) =
    mglProgramUniform3i program loc (safeFromIntegral w1)
                                    (safeFromIntegral w2)
                                    (safeFromIntegral w3)
{-# INLINE setI3 #-}

setI4 :: Integral a => USetter4 a
setI4 program loc (w1, w2, w3, w4) =
    mglProgramUniform4i program loc (safeFromIntegral w1)
                                    (safeFromIntegral w2)
                                    (safeFromIntegral w3)
                                    (safeFromIntegral w4)
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
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc f1
instance Uniformable (Float, Float) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc f1 f2
instance Uniformable (Float, Float, Float) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc f1 f2 f3
instance Uniformable (Float, Float, Float, Float) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc f1 f2 f3 f4
instance Uniformable Color where
    setUniform_ program loc (viewRgba -> tuple) =
        setUniform_ program loc tuple
instance Uniformable CFloat where
    setUniform_ program loc (CFloat f1) =
        mglProgramUniform1f program loc f1
instance Uniformable (CFloat, CFloat) where
    setUniform_ program loc (CFloat f1, CFloat f2) =
        mglProgramUniform2f program loc f1 f2
instance Uniformable (CFloat, CFloat, CFloat) where
    setUniform_ program loc (CFloat f1, CFloat f2, CFloat f3) =
        mglProgramUniform3f program loc f1 f2 f3
instance Uniformable (CFloat, CFloat, CFloat, CFloat) where
    setUniform_ program loc (CFloat f1, CFloat f2, CFloat f3, CFloat f4) =
        mglProgramUniform4f program loc f1 f2 f3 f4

instance Uniformable Double where
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc (double2Float f1)
instance Uniformable (Double, Double) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc (double2Float f1) (double2Float f2)
instance Uniformable (Double, Double, Double) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc
                            (double2Float f1)
                            (double2Float f2)
                            (double2Float f3)
instance Uniformable (Double, Double, Double, Double) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc
                            (double2Float f1)
                            (double2Float f2)
                            (double2Float f3)
                            (double2Float f4)
instance Uniformable CDouble where
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc (cdouble2Float f1)
instance Uniformable (CDouble, CDouble) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc (cdouble2Float f1) (cdouble2Float f2)
instance Uniformable (CDouble, CDouble, CDouble) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc
                            (cdouble2Float f1)
                            (cdouble2Float f2)
                            (cdouble2Float f3)
instance Uniformable (CDouble, CDouble, CDouble, CDouble) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc
                            (cdouble2Float f1)
                            (cdouble2Float f2)
                            (cdouble2Float f3)
                            (cdouble2Float f4)

double2FloatMap :: Functor a => a Double -> a Float
double2FloatMap = fmap double2Float
{-# INLINE double2FloatMap #-}

double2FloatMapMap :: (Functor a, Functor b) => a (b Double) -> a (b Float)
double2FloatMapMap = fmap (fmap double2Float)
{-# INLINE double2FloatMapMap #-}

cfloatToFloatMap :: Functor a => a CFloat -> a Float
cfloatToFloatMap = fmap unwrap where
  unwrap (CFloat x) = x
{-# INLINE cfloatToFloatMap #-}

cfloatToFloatMapMap :: (Functor a, Functor b) => a (b CFloat) -> a (b Float)
cfloatToFloatMapMap = fmap (fmap unwrap) where
  unwrap (CFloat x) = x
{-# INLINE cfloatToFloatMapMap #-}

cdoubleToDoubleMap :: Functor a => a CDouble -> a Double
cdoubleToDoubleMap = fmap unwrap where
  unwrap (CDouble x) = x
{-# INLINE cdoubleToDoubleMap #-}

cdoubleToDoubleMapMap :: (Functor a, Functor b) => a (b CDouble) -> a (b Double)
cdoubleToDoubleMapMap = fmap (fmap unwrap) where
  unwrap (CDouble x) = x
{-# INLINE cdoubleToDoubleMapMap #-}

instance Uniformable (Quaternion Float) where
    setUniform_ program loc (Quaternion w (V3 x y z)) =
        mglProgramUniform4f program loc x y z w

instance Uniformable (Quaternion Double) where
    setUniform_ program loc (double2FloatMap -> Quaternion w (V3 x y z)) =
        mglProgramUniform4f program loc x y z w

instance Uniformable (Quaternion CFloat) where
    setUniform_ program loc (Quaternion (CFloat w) (V3 (CFloat x) (CFloat y) (CFloat z))) =
        mglProgramUniform4f program loc x y z w

instance Uniformable (Quaternion CDouble) where
    setUniform_ program loc (cdoubleToDoubleMap -> q) =
        setUniform_ program loc q

instance Uniformable (V1 CFloat) where
    setUniform_ program loc (cfloatToFloatMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V2 CFloat) where
    setUniform_ program loc (cfloatToFloatMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V3 CFloat) where
    setUniform_ program loc (cfloatToFloatMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V4 CFloat) where
    setUniform_ program loc (cfloatToFloatMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V1 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V2 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V3 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (V4 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMap -> vec) =
        setUniform_ program loc vec

instance Uniformable (M33 CFloat) where
    setUniform_ program loc (cfloatToFloatMapMap -> m33) =
        setUniform_ program loc m33

instance Uniformable (M44 CFloat) where
    setUniform_ program loc (cfloatToFloatMapMap -> m44) =
        setUniform_ program loc m44

instance Uniformable (M33 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMapMap -> m33) =
        setUniform_ program loc m33

instance Uniformable (M44 CDouble) where
    setUniform_ program loc (cdoubleToDoubleMapMap -> m44) =
        setUniform_ program loc m44

instance Uniformable (V1 Double) where
    setUniform_ program loc (double2FloatMap -> V1 f1) =
        mglProgramUniform1f program loc f1

instance Uniformable (V2 Double) where
    setUniform_ program loc (double2FloatMap -> V2 f1 f2) =
        mglProgramUniform2f program loc f1 f2

instance Uniformable (V3 Double) where
    setUniform_ program loc (double2FloatMap -> V3 f1 f2 f3) =
        mglProgramUniform3f program loc f1 f2 f3

instance Uniformable (V4 Double) where
    setUniform_ program loc (double2FloatMap -> V4 f1 f2 f3 f4) =
        mglProgramUniform4f program loc f1 f2 f3 f4

instance Uniformable (M33 Double) where
    setUniform_ program loc (double2FloatMapMap -> m33) =
        with m33 $
            mglProgramUniformMatrix3fv program loc 1 GL_FALSE . castPtr

instance Uniformable (M44 Double) where
    setUniform_ program loc m44 =
        with (fmap (fmap double2Float) m44) $
            mglProgramUniformMatrix4fv program loc 1 GL_FALSE . castPtr

instance Uniformable (V1 Float) where
    setUniform_ program loc (V1 f1) =
        mglProgramUniform1f program loc f1

instance Uniformable (V2 Float) where
    setUniform_ program loc (V2 f1 f2) =
        mglProgramUniform2f program loc f1 f2

instance Uniformable (V3 Float) where
    setUniform_ program loc (V3 f1 f2 f3) =
        mglProgramUniform3f program loc f1 f2 f3

instance Uniformable (V4 Float) where
    setUniform_ program loc (V4 f1 f2 f3 f4) =
        mglProgramUniform4f program loc f1 f2 f3 f4

instance Uniformable (M33 Float) where
    setUniform_ program loc m33 =
        with m33 $
            mglProgramUniformMatrix3fv program loc 1 GL_FALSE . castPtr

instance Uniformable (M44 Float) where
    setUniform_ program loc m44 =
        with m44 $
            mglProgramUniformMatrix4fv program loc 1 GL_FALSE . castPtr

cdouble2Float :: CDouble -> Float
cdouble2Float (CDouble dbl) = double2Float dbl

-- | Returns a uniform location for a given name.
--
-- The uniform may not be in the shader or it may not be active. If this
-- happens, a special uniform location is returned that can be used in
-- `setUniform` to make it do nothing.
getUniformLocation :: MonadIO m => T.Text -> Pipeline -> m UniformLocation
getUniformLocation name pipeline = liftIO $ fromIntegral <$>
    withResource (resourcePL pipeline) (\(Pipeline_ program) ->
         B.useAsCString (T.encodeUtf8 name) $ \cstr ->
             glGetUniformLocation program cstr)

-- context local pipeline
newtype CLNopPipeline = CLNopPipeline { unwrapCLNop :: Pipeline }
                        deriving ( Typeable )

-- | Returns a pipeline that does not do anything.
--
-- Within the same context, this returns the same pipeline for each invocation.
nopPipeline :: MonadIO m => m Pipeline
nopPipeline =
    retrieveContextLocalData cr >>= return . unwrapCLNop
  where
    cr = do
        vsh <- newShader vsh_src Vertex
        fsh <- newShader fsh_src Fragment
        newPipeline [vsh, fsh] mempty >>= return . CLNopPipeline
      where
        (vsh_src, fsh_src) =
            (nopsrc, nopsrc)
          where
            nopsrc = case openGLVersion of
                OpenGLVersion 3 2 -> "#version 150\nvoid main() { }\n"
                OpenGLVersion 3 1 -> "#version 140\nvoid main() { }\n"
                OpenGLVersion 3 0 -> "#version 130\nvoid main() { }\n"
                OpenGLVersion 2 1 -> "#version 120\nvoid main() { }\n"
                OpenGLVersion 2 0 -> "#version 110\nvoid main() { }\n"
                OpenGLVersion maj min ->
                    "#version " <> showT maj <> showT min <> "0\n" <>
                    "void main() { }\n"

