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
    ( OpenGLLike
    , branchExt

    , module Ex
    , Scope()
    , scope
    , OpenGL()
    , initGL
    , runOpenGL

    , gi
    , gf
    , withG
    , allocaG

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
import Graphics.OpenGL.Types as Ex
import Graphics.OpenGL.Basic hiding ( OpenGL )
import Graphics.OpenGL.Extension as Ex
import Graphics.OpenGL.Profile.Core33 as Ex
import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.Fix
import Control.Monad.Reader
import Control.Monad.Trans.Reader hiding ( ask )
import Foreign.C.Types
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

newtype OpenGL a = OpenGL (ReaderT Scope IO a)
                   deriving ( Typeable, Functor, Monad, Applicative
                            , MonadMask, MonadCatch, MonadThrow, MonadIO
                            , MonadFix, MonadReader Scope )

-- | A constraint in which you can invoke raw OpenGL functions (see
-- `Graphics.Caramia.Internal.FlextGLReader`).
type OpenGLLike e m = (MonadReader e m, MonadIO m, Applicative m, HasScope e)

runOpenGL :: Scope -> OpenGL a -> IO a
runOpenGL gl (OpenGL r) = runReaderT r gl
{-# INLINE runOpenGL #-}

-- | Executes the first action if the given function evaluates to true,
-- otherwise the second one.
--
-- The type is written so that it is easy to plug in the extension query
-- function (e.g. `has_GL_EXT_direct_state_access`) there.
branchExt :: OpenGLLike e m
          => m Bool -> m a -> m a -> m a
branchExt test action other_action = do
    x <- test
    if x then action else other_action
{-# INLINE branchExt #-}

withG :: (OpenGLLike e n, Storable a)
      => a
      -> (forall e2 m. OpenGLLike e2 m => Ptr a -> m b)
      -> n b
withG thing action = do
    gl <- scope <$> ask
    liftIO $ with thing $ \ptr -> runReaderT (action ptr) gl
{-# INLINE withG #-}

allocaG :: (OpenGLLike e n, Storable a)
        => (forall e2 m. OpenGLLike e2 m => Ptr a -> m b)
        -> n b
allocaG action = do
    gl <- scope <$> ask
    liftIO $ alloca $ \ptr -> runReaderT (action ptr) gl
{-# INLINE allocaG #-}

mglDeleteBuffer :: OpenGLLike e m => GLuint -> m ()
mglDeleteBuffer x =
    withG x $ \x_ptr -> glDeleteBuffers 1 x_ptr

mglDeleteVertexArray :: OpenGLLike e m => GLuint -> m ()
mglDeleteVertexArray x =
    withG x $ \x_ptr -> glDeleteVertexArrays 1 x_ptr

mglGenBuffer :: OpenGLLike e m => m GLuint
mglGenBuffer =
    allocaG $ \x_ptr -> glGenBuffers 1 x_ptr *> liftIO (peek x_ptr)

mglGenVertexArray :: OpenGLLike e m => m GLuint
mglGenVertexArray =
    allocaG $ \x_ptr -> glGenVertexArrays 1 x_ptr *> liftIO (peek x_ptr)

mglGenFramebuffer :: OpenGLLike e m => m GLuint
mglGenFramebuffer =
    allocaG $ \x_ptr -> glGenFramebuffers 1 x_ptr *> liftIO (peek x_ptr)

mglDeleteFramebuffer :: OpenGLLike e m => GLuint -> m ()
mglDeleteFramebuffer x =
    withG x $ \x_ptr -> glDeleteFramebuffers 1 x_ptr

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
    branchExt gl_EXT_direct_state_access
              (glNamedBufferDataEXT buf size ptr usage)
              (withBoundBuffer buf $ glBufferData gl_ARRAY_BUFFER size ptr usage)

mglProgramUniform1ui :: GLuint -> GLint -> GLuint -> OpenGL ()
mglProgramUniform1ui =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1ui p l a)
        (\l a -> glUniform1ui l a)

mglProgramUniform2ui :: GLuint -> GLint -> (GLuint, GLuint) -> OpenGL ()
mglProgramUniform2ui =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2ui p l a b)
        (\l (a, b) -> glUniform2ui l a b)

mglProgramUniform3ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint) -> OpenGL ()
mglProgramUniform3ui =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3ui p l a b c)
        (\l (a, b, c) -> glUniform3ui l a b c)

mglProgramUniform4ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint, GLuint) -> OpenGL ()
mglProgramUniform4ui =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4ui p l a b c d)
        (\l (a, b, c, d) -> glUniform4ui l a b c d)

mglProgramUniform1i :: GLuint -> GLint -> GLint -> OpenGL ()
mglProgramUniform1i =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1i p l a)
        (\l a -> glUniform1i l a)

mglProgramUniform2i :: GLuint -> GLint -> (GLint, GLint) -> OpenGL ()
mglProgramUniform2i =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2i p l a b)
        (\l (a, b) -> glUniform2i l a b)

mglProgramUniform3i :: GLuint -> GLint -> (GLint, GLint, GLint) -> OpenGL ()
mglProgramUniform3i =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3i p l a b c)
        (\l (a, b, c) -> glUniform3i l a b c)

mglProgramUniform4i :: GLuint -> GLint -> (GLint, GLint, GLint, GLint) -> OpenGL ()
mglProgramUniform4i =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4i p l a b c d)
        (\l (a, b, c, d) -> glUniform4i l a b c d)

mglProgramUniform1f :: GLuint -> GLint -> GLfloat -> OpenGL ()
mglProgramUniform1f =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1f p l a)
        (\l a -> glUniform1f l a)

mglProgramUniform2f :: GLuint -> GLint -> (GLfloat, GLfloat) -> OpenGL ()
mglProgramUniform2f =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2f p l a b)
        (\l (a, b) -> glUniform2f l a b)

mglProgramUniform3f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat) -> OpenGL ()
mglProgramUniform3f =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3f p l a b c)
        (\l (a, b, c) -> glUniform3f l a b c)

mglProgramUniform4f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat, GLfloat) -> OpenGL ()
mglProgramUniform4f =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4f p l a b c d)
        (\l (a, b, c, d) -> glUniform4f l a b c d)

mglProgramUniformMatrix4fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> OpenGL ()
mglProgramUniformMatrix4fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniformMatrix4fv p l a b c)
        (\l (a, b, c) -> glUniformMatrix4fv l a b c)

mglProgramUniformMatrix3fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> OpenGL ()
mglProgramUniformMatrix3fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniformMatrix3fv p l a b c)
        (\l (a, b, c) -> glUniformMatrix3fv l a b c)

makeProgramUniformFunction :: (GLuint -> GLint -> a -> OpenGL ())
                           -> (GLint -> a -> OpenGL ())
                           -> GLuint -> GLint -> a -> OpenGL ()
makeProgramUniformFunction fun1 fun2 program loc args =
    branchExt gl_ARB_separate_shader_objects
              (fun1 program loc args)
              (withBoundProgram program $ fun2 loc args)
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
    liftIO $ alloca $ \get_ptr ->
        runReaderT (glGetIntegerv x (castPtr get_ptr)) gl *>
        peek get_ptr

gf :: OpenGLLike e m => GLenum -> m GLfloat
gf x = do
    gl <- scope <$> ask
    liftIO $ alloca $ \get_ptr ->
        runReaderT (glGetFloatv x (castPtr get_ptr)) gl *>
        peek get_ptr

