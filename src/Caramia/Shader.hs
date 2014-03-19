-- | Shaders.
--
-- This module lets you use GLSL shaders in rendering.
--
-- This abstracts OpenGL shaders and shader objects. In the future, we might
-- implement separate shader programs (that is,
-- GL_ARB_separate_shader_objects).
--
-- <https://www.opengl.org/wiki/OpenGL_Shading_Language>
--

-- TODO: separable program objects. This is an extension and only became core
-- in OpenGL 4.1 (GL_ARB_separate_shader_objects). As of writing of this, I
-- think it's not prime time to use those yet. Maybe in a few years.
--

{-# LANGUAGE ExistentialQuantification, UndecidableInstances #-}
-- {-# LANGUAGE OverlappingInstances #-}
-- our instances don't actually overlap (as long as we don't expose our classes
-- to public API) but GHC is not smart enough to notice that.

module Caramia.Shader
    ( newShader
    , newPipeline
    , Shader()
    , Pipeline()
      -- * Uniforms
    , setUniform
    , Uniformable()
    , UniformLocation
      -- * Shader stages
    , ShaderStage(..)
      -- * Views
    , viewStage
      -- * Exception
    , ShaderCompilationError(..)
    , ShaderLinkingError(..)
    , ShaderBuildingError(..)
    )
    where

import Caramia.Resource
import Caramia.Internal.OpenGLCApi
import Caramia.Internal.Safe
import Caramia.Math

import GHC.Float ( double2Float )

import Control.Exception
import Control.Monad
import Foreign.C.Types
import Foreign.Storable
import Foreign.Ptr
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils
import Data.Typeable ( cast, Typeable )
import Data.IORef
import Data.Int
import Data.Word
import Data.Foldable
import Data.List ( nub )
import System.IO.Unsafe ( unsafePerformIO )
import qualified Data.Text as T
import qualified Data.Text.Foreign as T

-- | A shader object for a specific shader stage.
--
-- OpenGL equivalent is the shader object.
data Shader = Shader
    { resource     :: !(Resource Shader_)
    , viewStage    :: !ShaderStage
    -- ^ Which stage does this shader belong to.
    , identifier   :: !Int
    }

-- | A pipeline object that references a collection of shaders.
--
-- OpenGL equivalent is the shader program object.
data Pipeline = Pipeline
    { resourcePL :: !(Resource (Pipeline_))
    , shaders :: [Shader] }

type UniformLocation = Int

newtype Pipeline_ = Pipeline_ GLuint

instance Eq Shader where
    (resource -> res1) == (resource -> res2) = res1 == res2

-- | The ordering has no inherent meaning but it allows shaders to be stored
-- correctly in containers that have `Ord` constraint.
instance Ord Shader where
    (identifier -> id1) `compare` (identifier -> id2) = id1 `compare` id2

shaderIdentifierSupply :: IORef Int
shaderIdentifierSupply = unsafePerformIO $ newIORef 0
{-# NOINLINE shaderIdentifierSupply #-}

data Shader_ = CompiledShader !GLuint   -- OpenGL shader

data ShaderStage =
    Vertex
  | Fragment
  | Geometry
  deriving ( Eq, Ord, Show, Read )
-- TODO: add tesselation shaders

toConstant :: ShaderStage -> GLenum
toConstant Vertex = gl_VERTEX_SHADER
toConstant Fragment = gl_FRAGMENT_SHADER
toConstant Geometry = gl_GEOMETRY_SHADER

-- | Thrown when either a compilation or linking error occurs.
data ShaderBuildingError = forall e. Exception e => ShaderBuildingError e

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
           -> Pipeline
           -> IO ()
setUniform uniformable location pipeline =
    withResource (resourcePL pipeline) $ \(Pipeline_ program) ->
        setUniform_ program (safeFromIntegral location) uniformable
{-# INLINE [1] setUniform #-}

-- | Creates a shader from GLSL shader source.
--
-- This can throw `ShaderCompilationError` if compilation fails.
newShader :: T.Text      -- ^ The shader source code.
          -> ShaderStage
          -> IO Shader
newShader source_code stage = mask_ $ do
    res <- newResource create
                       deleter
                       (return ())
    nid <- atomicModifyIORef' shaderIdentifierSupply $ \old ->
        ( old + 1, old )
    return Shader { resource = res
                  , identifier = nid
                  , viewStage = stage }
  where
    deleter (CompiledShader shader) =
       mglDeleteShader shader

    create = do
        shader_name <- mglCreateShader (toConstant stage)
        T.withCStringLen source_code $ \(cstr, len) -> do
            with cstr $ \cstr_ptr ->
                with (fromIntegral len :: GLint) $ \len_ptr ->
                mglShaderSource
                    shader_name
                    1
                    cstr_ptr
                    len_ptr
        mglCompileShader shader_name
        checkCompilationErrors shader_name
        return $ CompiledShader shader_name

-- | Checks that there are no compilation errors in an OpenGL shader object.
--
-- DELETES the shader if there were errors.
checkCompilationErrors :: GLuint -> IO ()
checkCompilationErrors shader_name = do
    status <- gget $ mglGetShaderiv shader_name gl_COMPILE_STATUS
    when (status == fromIntegral gl_FALSE) $ do
        log_len <- gget $ mglGetShaderiv shader_name gl_INFO_LOG_LENGTH
        allocaBytes (safeFromIntegral log_len) $ \str -> do
            mglGetShaderInfoLog shader_name log_len nullPtr str
            log <- T.peekCStringLen ( str
                                    , safeFromIntegral $ max 0 $ log_len-1 )
            mglDeleteShader shader_name
            throwIO $ ShaderCompilationError log

-- | Same as `checkCompilationErrors` but for linking.
--
-- DELETES the program if there were errors.
checkLinkingErrors :: GLuint -> IO ()
checkLinkingErrors program_name = do
    status <- gget $ mglGetProgramiv program_name gl_LINK_STATUS
    when (status == fromIntegral gl_FALSE) $ do
        log_len <- gget $ mglGetProgramiv program_name gl_INFO_LOG_LENGTH
        allocaBytes (safeFromIntegral log_len) $ \str -> do
            mglGetProgramInfoLog program_name log_len nullPtr str
            log <- T.peekCStringLen ( str
                                    , safeFromIntegral $ max 0 $ log_len-1)
            mglDeleteProgram program_name
            throwIO $ ShaderLinkingError log

-- | Creates a pipeline composed of different shaders.
--
-- Each stage can have at most 1 shader.
newPipeline :: [Shader] -> IO Pipeline
newPipeline shaders
    -- Should we really restrict the stages? OpenGL does allow you to link
    -- several shaders to one stage as long as only one of them has a main()
    -- function.
    | nub stagefied /= stagefied =
        error "newPipeline: duplicate shader stages."
    | otherwise = newTraditionalPipeline shaders
  where
    stagefied = fmap viewStage shaders

newTraditionalPipeline :: [Shader] -> IO Pipeline
newTraditionalPipeline shaders = mask_ $ do
    res <- newResource creator
                       deleter
                       (return ())
    return Pipeline { resourcePL = res
                    , shaders = shaders }
  where
    creator = do
        program <- mglCreateProgram
        for_ shaders $ \shader ->
            withResource (resource shader) $ \(CompiledShader sname) ->
                mglAttachShader program sname
        mglLinkProgram program
        checkLinkingErrors program
        return $ (Pipeline_ program)

    deleter (Pipeline_ program) = mglDeleteProgram program

gget :: Storable a => (Ptr a -> IO ()) -> IO a
gget action = alloca $ \ptr -> action ptr >> peek ptr

-- | Class of data types that can be set to a uniform in a shader pipeline.
--
-- We provide typeclasses for large integer values (such as `Integer`) but you
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
        mglProgramUniform1f program loc (CFloat f1)
instance Uniformable (Float, Float) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc (CFloat f1) (CFloat f2)
instance Uniformable (Float, Float, Float) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc
                            (CFloat f1)
                            (CFloat f2)
                            (CFloat f3)
instance Uniformable (Float, Float, Float, Float) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc
                            (CFloat f1)
                            (CFloat f2)
                            (CFloat f3)
                            (CFloat f4)
instance Uniformable CFloat where
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc f1
instance Uniformable (CFloat, CFloat) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc f1 f2
instance Uniformable (CFloat, CFloat, CFloat) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc f1 f2 f3
instance Uniformable (CFloat, CFloat, CFloat, CFloat) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc f1 f2 f3 f4

instance Uniformable Double where
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc (double2CFloat f1)
instance Uniformable (Double, Double) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc (double2CFloat f1) (double2CFloat f2)
instance Uniformable (Double, Double, Double) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc
                            (double2CFloat f1)
                            (double2CFloat f2)
                            (double2CFloat f3)
instance Uniformable (Double, Double, Double, Double) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc
                            (double2CFloat f1)
                            (double2CFloat f2)
                            (double2CFloat f3)
                            (double2CFloat f4)
instance Uniformable CDouble where
    setUniform_ program loc f1 =
        mglProgramUniform1f program loc (cdouble2CFloat f1)
instance Uniformable (CDouble, CDouble) where
    setUniform_ program loc (f1, f2) =
        mglProgramUniform2f program loc (cdouble2CFloat f1) (cdouble2CFloat f2)
instance Uniformable (CDouble, CDouble, CDouble) where
    setUniform_ program loc (f1, f2, f3) =
        mglProgramUniform3f program loc
                            (cdouble2CFloat f1)
                            (cdouble2CFloat f2)
                            (cdouble2CFloat f3)
instance Uniformable (CDouble, CDouble, CDouble, CDouble) where
    setUniform_ program loc (f1, f2, f3, f4) =
        mglProgramUniform4f program loc
                            (cdouble2CFloat f1)
                            (cdouble2CFloat f2)
                            (cdouble2CFloat f3)
                            (cdouble2CFloat f4)

instance Uniformable Vector3 where
    setUniform_ program loc (toTuple3 -> tuple) =
        setUniform_ program loc tuple

instance Uniformable Quaternion where
    setUniform_ program loc (toTupleq -> tuple) =
        setUniform_ program loc tuple

instance Uniformable Matrix33 where
    setUniform_ program loc m33 =
        withMatrix33Ptr m33 $
            mglProgramUniformMatrix3fv program loc 1 (fromIntegral gl_FALSE)

instance Uniformable Matrix44 where
    setUniform_ program loc m44 =
        withMatrix44Ptr m44 $ mglProgramUniformMatrix4fv program loc 1
            (fromIntegral gl_FALSE)

-- these are for RULES firing
newtype Transpose33 = Transpose33 Matrix33
newtype Transpose44 = Transpose44 Matrix44

instance Uniformable Transpose33 where
    setUniform_ program loc (Transpose33 m33) =
        withMatrix33Ptr m33 $
            mglProgramUniformMatrix3fv program loc 1 (fromIntegral gl_TRUE)

instance Uniformable Transpose44 where
    setUniform_ program loc (Transpose44 m44) =
        withMatrix44Ptr m44 $ mglProgramUniformMatrix4fv program loc 1
            (fromIntegral gl_TRUE)

double2CFloat :: Double -> CFloat
double2CFloat dbl = CFloat $ double2Float dbl

cdouble2CFloat :: CDouble -> CFloat
cdouble2CFloat (CDouble dbl) = CFloat $ double2Float dbl

{-# RULES "transpose/mglProgramUniformMatrix3fv" forall (a :: Matrix33) b c.
        setUniform (transpose33 a) b c =
        setUniform (Transpose33 a) b c #-}

{-# RULES "transpose/mglProgramUniformMatrix4fv" forall (a :: Matrix44) b c.
        setUniform (transpose44 a) b c =
        setUniform (Transpose44 a) b c #-}

