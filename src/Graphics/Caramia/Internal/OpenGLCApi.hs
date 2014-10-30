-- | Module for using the raw OpenGL API.
--
-- This is a mixture from the OpenGLRaw package and some of our own stuff.
--
-- TODO: Some of this stuff should probably be in OpenGLRaw so we could add
-- stuff there instead.
--

{-# LANGUAGE ForeignFunctionInterface, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE DeriveFunctor, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleContexts, ConstraintKinds, RankNTypes #-}

module Graphics.Caramia.Internal.OpenGLCApi
    ( module Ex

    , FlextGLM()
    , OpenGLLike
    , runFlextGLM
    , fgl
    , branchExt

    , gi
    , gf

    , withBoundVAO
    , withBoundBuffer
    , withBoundElementBuffer
    , withBoundPixelUnpackBuffer
    , withBoundProgram
    , withBoundDrawFramebuffer

    , setBoundProgram
    , setBoundElementBuffer

    -- Functions that I made up that I wish were in OpenGL.
    , mglDeleteBuffer
    , mglGenBuffer
    , mglDeleteVertexArray
    , mglGenVertexArray
    , mglDeleteFramebuffer
    , mglGenFramebuffer
    , mglNamedBufferData
    , mglVertexArrayVertexAttribOffsetAndEnable
    , mglVertexArrayVertexAttribIOffsetAndEnable
    , mglVertexArrayVertexAttribDivisor
    -- GL_ARB_separate_shader_objects...but I want them even if that extension
    -- is not available.
    , mglProgramUniform1ui
    , mglProgramUniform2ui
    , mglProgramUniform3ui
    , mglProgramUniform4ui
    , mglProgramUniform1i
    , mglProgramUniform2i
    , mglProgramUniform3i
    , mglProgramUniform4i
    , mglProgramUniform1f
    , mglProgramUniform2f
    , mglProgramUniform3f
    , mglProgramUniform4f
    , mglProgramUniformMatrix4fv
    , mglProgramUniformMatrix3fv
    , mglMapNamedBufferRange
    , mglUnmapNamedBuffer
    , mglNamedCopyBufferSubData
    )
    where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Internal.FlextGLReentrant as Ex
import Graphics.Caramia.Internal.FlextGLReader as Ex
import Graphics.Caramia.Internal.FlextGLEnums as Ex
import Graphics.Caramia.Internal.FlextGLTypes as Ex
import qualified Graphics.Caramia.Internal.FlextGLFlipped as F
import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.Fix
import Control.Monad.Reader
import Control.Monad.Trans.Reader hiding ( ask )
import Foreign.Ptr
import Foreign.C.Types
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

newtype FlextGLM a = FlextGLM (ReaderT FlextGL IO a)
                     deriving ( Typeable, Functor, Monad, Applicative
                              , MonadMask, MonadCatch, MonadThrow, MonadIO
                              , MonadFix, MonadReader FlextGL )

-- | A constraint in which you can invoke raw OpenGL functions (see
-- `Graphics.Caramia.Internal.FlextGLReader`).
type OpenGLLike e m = (MonadReader e m, MonadIO m, Applicative m, HasFlextGL e)

runFlextGLM :: FlextGL -> FlextGLM a -> IO a
runFlextGLM gl (FlextGLM r) = runReaderT r gl
{-# INLINE runFlextGLM #-}

fgl :: OpenGLLike e m => (FlextGL -> IO a) -> m a
fgl fun = ask >>= liftIO . fun . scope
{-# INLINE fgl #-}

-- | Executes the first action if the given function evaluates to true,
-- otherwise the second one.
--
-- The type is written so that it is easy to plug in the extension query
-- function (e.g. `has_GL_EXT_direct_state_access`) there.
branchExt :: OpenGLLike e m
          => (FlextGL -> Bool) -> m a -> m a -> m a
branchExt test action other_action = do
    gl <- scope <$> ask
    if test gl then action else other_action
{-# INLINE branchExt #-}

mglDeleteBuffer :: OpenGLLike e m => GLuint -> m ()
mglDeleteBuffer x = do
    gl <- scope <$> ask
    liftIO $ with x $ \x_ptr -> F.glDeleteBuffers 1 x_ptr gl

mglDeleteVertexArray :: OpenGLLike e m => GLuint -> m ()
mglDeleteVertexArray x = do
    gl <- scope <$> ask
    liftIO $ with x $ \x_ptr -> F.glDeleteVertexArrays 1 x_ptr gl

mglGenBuffer :: OpenGLLike e m => m GLuint
mglGenBuffer = do
    gl <- scope <$> ask
    liftIO $ alloca $ \x_ptr -> F.glGenBuffers 1 x_ptr gl *> peek x_ptr

mglGenVertexArray :: OpenGLLike e m => m GLuint
mglGenVertexArray = do
    gl <- scope <$> ask
    liftIO $ alloca $ \x_ptr -> F.glGenVertexArrays 1 x_ptr gl *> peek x_ptr

mglGenFramebuffer :: OpenGLLike e m => m GLuint
mglGenFramebuffer = do
    gl <- scope <$> ask
    liftIO $ alloca $ \x_ptr -> F.glGenFramebuffers 1 x_ptr gl *> peek x_ptr

mglDeleteFramebuffer :: OpenGLLike e m => GLuint -> m ()
mglDeleteFramebuffer x = do
    gl <- scope <$> ask
    liftIO $ with x $ \x_ptr -> F.glDeleteFramebuffers 1 x_ptr gl

withBoundDrawFramebuffer :: (MonadMask m, OpenGLLike e m) => GLuint -> m a -> m a
withBoundDrawFramebuffer x action = do
    old <- gi gl_DRAW_FRAMEBUFFER_BINDING
    finally (glBindFramebuffer gl_DRAW_FRAMEBUFFER x *> action)
            (glBindFramebuffer gl_DRAW_FRAMEBUFFER old)

withBoundProgram :: (OpenGLLike e m, MonadMask m) => GLuint -> m a -> m a
withBoundProgram program action = do
    old <- gi gl_CURRENT_PROGRAM
    finally (glUseProgram program *> action)
            (glUseProgram $ fromIntegral old)

setBoundProgram :: OpenGLLike e m => GLuint -> m ()
setBoundProgram = glUseProgram

withBoundBuffer :: (MonadMask m, OpenGLLike e m) => GLuint -> m a -> m a
withBoundBuffer buf action = do
    old <- gi gl_ARRAY_BUFFER_BINDING
    finally (glBindBuffer gl_ARRAY_BUFFER buf *> action)
            (glBindBuffer gl_ARRAY_BUFFER $ fromIntegral old)

setBoundElementBuffer :: OpenGLLike e m => GLuint -> m ()
setBoundElementBuffer = glBindBuffer gl_ELEMENT_ARRAY_BUFFER

withBoundElementBuffer :: (OpenGLLike e m, MonadMask m) => GLuint -> m a -> m a
withBoundElementBuffer buf action = do
    old <- gi gl_ELEMENT_ARRAY_BUFFER_BINDING
    finally (glBindBuffer gl_ELEMENT_ARRAY_BUFFER buf *> action)
            (glBindBuffer gl_ELEMENT_ARRAY_BUFFER $ fromIntegral old)

withBoundPixelUnpackBuffer :: (OpenGLLike e m, MonadMask m) => GLuint -> m a -> m a
withBoundPixelUnpackBuffer buf action = do
    old <- gi gl_PIXEL_UNPACK_BUFFER_BINDING
    finally (glBindBuffer gl_PIXEL_UNPACK_BUFFER buf *> action)
            (glBindBuffer gl_PIXEL_UNPACK_BUFFER $ fromIntegral old)

withBoundVAO :: (OpenGLLike e m, MonadMask m) => GLuint -> m a -> m a
withBoundVAO vao action = do
    old <- gi gl_VERTEX_ARRAY_BINDING
    finally (glBindVertexArray vao *> action)
            (glBindVertexArray $ fromIntegral old)

mglVertexArrayVertexAttribDivisor :: (OpenGLLike e m, MonadMask m) =>
    GLuint -> GLuint -> GLuint -> m ()
mglVertexArrayVertexAttribDivisor vaobj index divisor =
    withBoundVAO vaobj $ glVertexAttribDivisor index divisor

mglVertexArrayVertexAttribOffsetAndEnable :: (OpenGLLike e m, MonadMask m) =>
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLboolean -> GLsizei -> CPtrdiff -> m ()
mglVertexArrayVertexAttribOffsetAndEnable
    vaobj buffer index size dtype normalized stride (CPtrdiff offset) =

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            glVertexAttribPointer index size dtype normalized stride
                                  (intPtrToPtr $ fromIntegral offset)

mglVertexArrayVertexAttribIOffsetAndEnable :: (OpenGLLike e m, MonadMask m) =>
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLsizei -> GLintptr -> m ()
mglVertexArrayVertexAttribIOffsetAndEnable
    vaobj buffer index size dtype stride offset = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            glVertexAttribIPointer index size dtype stride
                                   (intPtrToPtr $ fromIntegral offset)

mglNamedBufferData :: (OpenGLLike e m, MonadMask m)
                   => GLuint
                   -> GLsizeiptr
                   -> Ptr ()
                   -> GLenum
                   -> m ()
mglNamedBufferData buf size ptr usage =
    branchExt has_GL_EXT_direct_state_access
              (glNamedBufferDataEXT buf size ptr usage)
              (withBoundBuffer buf $ glBufferData gl_ARRAY_BUFFER size ptr usage)

mglProgramUniform1ui :: GLuint -> GLint -> GLuint -> FlextGLM ()
mglProgramUniform1ui =
    makeProgramUniformFunction
        (\p l a -> F.glProgramUniform1ui p l a)
        (\l a -> F.glUniform1ui l a)

mglProgramUniform2ui :: GLuint -> GLint -> (GLuint, GLuint) -> FlextGLM ()
mglProgramUniform2ui =
    makeProgramUniformFunction
        (\p l (a, b) -> F.glProgramUniform2ui p l a b)
        (\l (a, b) -> F.glUniform2ui l a b)

mglProgramUniform3ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint) -> FlextGLM ()
mglProgramUniform3ui =
    makeProgramUniformFunction
        (\p l (a, b, c) -> F.glProgramUniform3ui p l a b c)
        (\l (a, b, c) -> F.glUniform3ui l a b c)

mglProgramUniform4ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint, GLuint) -> FlextGLM ()
mglProgramUniform4ui =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> F.glProgramUniform4ui p l a b c d)
        (\l (a, b, c, d) -> F.glUniform4ui l a b c d)

mglProgramUniform1i :: GLuint -> GLint -> GLint -> FlextGLM ()
mglProgramUniform1i =
    makeProgramUniformFunction
        (\p l a -> F.glProgramUniform1i p l a)
        (\l a -> F.glUniform1i l a)

mglProgramUniform2i :: GLuint -> GLint -> (GLint, GLint) -> FlextGLM ()
mglProgramUniform2i =
    makeProgramUniformFunction
        (\p l (a, b) -> F.glProgramUniform2i p l a b)
        (\l (a, b) -> F.glUniform2i l a b)

mglProgramUniform3i :: GLuint -> GLint -> (GLint, GLint, GLint) -> FlextGLM ()
mglProgramUniform3i =
    makeProgramUniformFunction
        (\p l (a, b, c) -> F.glProgramUniform3i p l a b c)
        (\l (a, b, c) -> F.glUniform3i l a b c)

mglProgramUniform4i :: GLuint -> GLint -> (GLint, GLint, GLint, GLint) -> FlextGLM ()
mglProgramUniform4i =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> F.glProgramUniform4i p l a b c d)
        (\l (a, b, c, d) -> F.glUniform4i l a b c d)

mglProgramUniform1f :: GLuint -> GLint -> GLfloat -> FlextGLM ()
mglProgramUniform1f =
    makeProgramUniformFunction
        (\p l a -> F.glProgramUniform1f p l a)
        (\l a -> F.glUniform1f l a)

mglProgramUniform2f :: GLuint -> GLint -> (GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform2f =
    makeProgramUniformFunction
        (\p l (a, b) -> F.glProgramUniform2f p l a b)
        (\l (a, b) -> F.glUniform2f l a b)

mglProgramUniform3f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform3f =
    makeProgramUniformFunction
        (\p l (a, b, c) -> F.glProgramUniform3f p l a b c)
        (\l (a, b, c) -> F.glUniform3f l a b c)

mglProgramUniform4f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform4f =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> F.glProgramUniform4f p l a b c d)
        (\l (a, b, c, d) -> F.glUniform4f l a b c d)

mglProgramUniformMatrix4fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> FlextGLM ()
mglProgramUniformMatrix4fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> F.glProgramUniformMatrix4fv p l a b c)
        (\l (a, b, c) -> F.glUniformMatrix4fv l a b c)

mglProgramUniformMatrix3fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> FlextGLM ()
mglProgramUniformMatrix3fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> F.glProgramUniformMatrix3fv p l a b c)
        (\l (a, b, c) -> F.glUniformMatrix3fv l a b c)

makeProgramUniformFunction :: (GLuint -> GLint -> a -> FlextGL -> IO ())
                           -> (GLint -> a -> FlextGL -> IO ())
                           -> GLuint -> GLint -> a -> FlextGLM ()
makeProgramUniformFunction fun1 fun2 program loc args =
    branchExt has_GL_ARB_separate_shader_objects
              (fgl $ fun1 program loc args)
              (withBoundProgram program $ fgl $ fun2 loc args)
{-# INLINE makeProgramUniformFunction #-}

mglMapNamedBufferRange :: (OpenGLLike e m, MonadMask m)
                       => GLuint -> GLintptr
                       -> GLsizeiptr -> GLbitfield -> m (Ptr ())
mglMapNamedBufferRange buffer offset length access =
    withBoundBuffer buffer $
        glMapBufferRange gl_ARRAY_BUFFER offset length access

mglUnmapNamedBuffer :: (OpenGLLike e m, MonadMask m)
                    => GLuint -> m GLboolean
mglUnmapNamedBuffer buffer =
    withBoundBuffer buffer $ glUnmapBuffer gl_ARRAY_BUFFER

mglNamedCopyBufferSubData :: (OpenGLLike e m, MonadMask m) => GLuint -> GLuint
                          -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
mglNamedCopyBufferSubData src dst src_offset dst_offset num_bytes =
    withBoundElementBuffer src $
        withBoundBuffer dst $
            glCopyBufferSubData gl_ELEMENT_ARRAY_BUFFER
                                gl_ARRAY_BUFFER
                                src_offset
                                dst_offset
                                num_bytes

-- | Shortcut to `glGetIntegerv` when you query only one integer.
gi :: OpenGLLike e m => GLenum -> m GLuint
gi x = do
    gl <- scope <$> ask
    liftIO $ alloca $ \get_ptr -> F.glGetIntegerv x (castPtr get_ptr) gl *>
                                  peek get_ptr

gf :: OpenGLLike e m => GLenum -> m GLfloat
gf x = do
    gl <- scope <$> ask
    liftIO $ alloca $ \get_ptr -> F.glGetFloatv x (castPtr get_ptr) gl *>
                                  peek get_ptr

