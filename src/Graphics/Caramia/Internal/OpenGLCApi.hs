-- | Module for using the raw OpenGL API.
--
-- This is a mixture from the OpenGLRaw package and some of our own stuff.
--
-- TODO: Some of this stuff should probably be in OpenGLRaw so we could add
-- stuff there instead.
--

{-# LANGUAGE ForeignFunctionInterface, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE DeriveFunctor, GeneralizedNewtypeDeriving #-}

module Graphics.Caramia.Internal.OpenGLCApi
    ( module Ex

    , FlextGLM()
    , runFlextGLM
    , askGL
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
import Control.Monad.IO.Class
import Control.Monad.Catch
import Control.Monad.Trans.Reader
import Control.Monad.Trans.Class ( lift )
import Foreign.Ptr
import Foreign.C.Types
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

newtype FlextGLM a = FlextGLM (ReaderT FlextGL IO a)
                     deriving ( Typeable, Functor, Monad, Applicative
                              , MonadMask, MonadCatch, MonadThrow, MonadIO )

runFlextGLM :: FlextGL -> FlextGLM a -> IO a
runFlextGLM gl (FlextGLM r) = runReaderT r gl
{-# INLINE runFlextGLM #-}

fgl :: (FlextGL -> IO a) -> FlextGLM a
fgl fun = FlextGLM $ ask >>= lift . fun
{-# INLINE fgl #-}

askGL :: FlextGLM FlextGL
askGL = FlextGLM ask
{-# INLINE askGL #-}

-- | Executes the first action if given boolean is true, otherwise the second
-- one.
--
-- The type is written so that it is easy to plug in the extension query
-- function (e.g. `has_GL_EXT_direct_state_access`) there.
branchExt :: (FlextGL -> Bool) -> FlextGLM a -> FlextGLM a -> FlextGLM a
branchExt test action other_action = do
    gl <- askGL
    if test gl then action else other_action
{-# INLINE branchExt #-}

mglDeleteBuffer :: GLuint -> FlextGLM ()
mglDeleteBuffer x = do
    gl <- askGL
    liftIO $ with x $ \x_ptr -> glDeleteBuffers 1 x_ptr gl

mglDeleteVertexArray :: GLuint -> FlextGLM ()
mglDeleteVertexArray x = do
    gl <- askGL
    liftIO $ with x $ \x_ptr -> glDeleteVertexArrays 1 x_ptr gl

mglGenBuffer :: FlextGLM GLuint
mglGenBuffer = do
    gl <- askGL
    liftIO $ alloca $ \x_ptr -> glGenBuffers 1 x_ptr gl *> peek x_ptr

mglGenVertexArray :: FlextGLM GLuint
mglGenVertexArray = do
    gl <- askGL
    liftIO $ alloca $ \x_ptr -> glGenVertexArrays 1 x_ptr gl *> peek x_ptr

mglGenFramebuffer :: FlextGLM GLuint
mglGenFramebuffer = do
    gl <- askGL
    liftIO $ alloca $ \x_ptr -> glGenFramebuffers 1 x_ptr gl *> peek x_ptr

mglDeleteFramebuffer :: GLuint -> FlextGLM ()
mglDeleteFramebuffer x = do
    gl <- askGL
    liftIO $ with x $ \x_ptr -> glDeleteFramebuffers 1 x_ptr gl

withBoundDrawFramebuffer :: GLuint -> FlextGLM a -> FlextGLM a
withBoundDrawFramebuffer x action = do
    old <- gi gl_DRAW_FRAMEBUFFER_BINDING
    finally (fgl (glBindFramebuffer gl_DRAW_FRAMEBUFFER x) *> action)
            (fgl $ glBindFramebuffer gl_DRAW_FRAMEBUFFER old)

withBoundProgram :: GLuint -> FlextGLM a -> FlextGLM a
withBoundProgram program action = do
    old <- gi gl_CURRENT_PROGRAM
    finally (fgl (glUseProgram program) *> action)
            (fgl $ glUseProgram $ fromIntegral old)

setBoundProgram :: GLuint -> FlextGLM ()
setBoundProgram = fgl . glUseProgram

withBoundBuffer :: GLuint -> FlextGLM a -> FlextGLM a
withBoundBuffer buf action = do
    old <- gi gl_ARRAY_BUFFER_BINDING
    finally (fgl (glBindBuffer gl_ARRAY_BUFFER buf) *> action)
            (fgl $ glBindBuffer gl_ARRAY_BUFFER $ fromIntegral old)

setBoundElementBuffer :: GLuint -> FlextGLM ()
setBoundElementBuffer = fgl . glBindBuffer gl_ELEMENT_ARRAY_BUFFER

withBoundElementBuffer :: GLuint -> FlextGLM a -> FlextGLM a
withBoundElementBuffer buf action = do
    old <- gi gl_ELEMENT_ARRAY_BUFFER_BINDING
    finally (fgl (glBindBuffer gl_ELEMENT_ARRAY_BUFFER buf) *> action)
            (fgl $ glBindBuffer gl_ELEMENT_ARRAY_BUFFER $ fromIntegral old)

withBoundPixelUnpackBuffer :: GLuint -> FlextGLM a -> FlextGLM a
withBoundPixelUnpackBuffer buf action = do
    old <- gi gl_PIXEL_UNPACK_BUFFER_BINDING
    finally (fgl (glBindBuffer gl_PIXEL_UNPACK_BUFFER buf) *> action)
            (fgl $ glBindBuffer gl_PIXEL_UNPACK_BUFFER $ fromIntegral old)

withBoundVAO :: GLuint -> FlextGLM a -> FlextGLM a
withBoundVAO vao action = do
    old <- gi gl_VERTEX_ARRAY_BINDING
    finally (fgl (glBindVertexArray vao) *> action)
            (fgl $ glBindVertexArray $ fromIntegral old)

mglVertexArrayVertexAttribDivisor ::
    GLuint -> GLuint -> GLuint -> FlextGLM ()
mglVertexArrayVertexAttribDivisor vaobj index divisor =
    withBoundVAO vaobj $ fgl $ glVertexAttribDivisor index divisor

mglVertexArrayVertexAttribOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLboolean -> GLsizei -> CPtrdiff -> FlextGLM ()
mglVertexArrayVertexAttribOffsetAndEnable
    vaobj buffer index size dtype normalized stride (CPtrdiff offset) =

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            fgl $ glEnableVertexAttribArray index
            fgl $ glVertexAttribPointer index size dtype normalized stride
                                        (intPtrToPtr $ fromIntegral offset)

mglVertexArrayVertexAttribIOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLsizei -> GLintptr -> FlextGLM ()
mglVertexArrayVertexAttribIOffsetAndEnable
    vaobj buffer index size dtype stride offset = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            fgl $ glEnableVertexAttribArray index
            fgl $ glVertexAttribIPointer index size dtype stride
                                         (intPtrToPtr $ fromIntegral offset)

mglNamedBufferData :: GLuint
                   -> GLsizeiptr
                   -> Ptr ()
                   -> GLenum
                   -> FlextGLM ()
mglNamedBufferData buf size ptr usage =
    branchExt has_GL_EXT_direct_state_access
              (fgl $ glNamedBufferDataEXT buf size ptr usage)
              (withBoundBuffer buf $ fgl $ glBufferData gl_ARRAY_BUFFER size ptr usage)

mglProgramUniform1ui :: GLuint -> GLint -> GLuint -> FlextGLM ()
mglProgramUniform1ui =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1ui p l a)
        (\l a -> glUniform1ui l a)

mglProgramUniform2ui :: GLuint -> GLint -> (GLuint, GLuint) -> FlextGLM ()
mglProgramUniform2ui =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2ui p l a b)
        (\l (a, b) -> glUniform2ui l a b)

mglProgramUniform3ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint) -> FlextGLM ()
mglProgramUniform3ui =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3ui p l a b c)
        (\l (a, b, c) -> glUniform3ui l a b c)

mglProgramUniform4ui :: GLuint -> GLint -> (GLuint, GLuint, GLuint, GLuint) -> FlextGLM ()
mglProgramUniform4ui =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4ui p l a b c d)
        (\l (a, b, c, d) -> glUniform4ui l a b c d)

mglProgramUniform1i :: GLuint -> GLint -> GLint -> FlextGLM ()
mglProgramUniform1i =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1i p l a)
        (\l a -> glUniform1i l a)

mglProgramUniform2i :: GLuint -> GLint -> (GLint, GLint) -> FlextGLM ()
mglProgramUniform2i =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2i p l a b)
        (\l (a, b) -> glUniform2i l a b)

mglProgramUniform3i :: GLuint -> GLint -> (GLint, GLint, GLint) -> FlextGLM ()
mglProgramUniform3i =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3i p l a b c)
        (\l (a, b, c) -> glUniform3i l a b c)

mglProgramUniform4i :: GLuint -> GLint -> (GLint, GLint, GLint, GLint) -> FlextGLM ()
mglProgramUniform4i =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4i p l a b c d)
        (\l (a, b, c, d) -> glUniform4i l a b c d)

mglProgramUniform1f :: GLuint -> GLint -> GLfloat -> FlextGLM ()
mglProgramUniform1f =
    makeProgramUniformFunction
        (\p l a -> glProgramUniform1f p l a)
        (\l a -> glUniform1f l a)

mglProgramUniform2f :: GLuint -> GLint -> (GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform2f =
    makeProgramUniformFunction
        (\p l (a, b) -> glProgramUniform2f p l a b)
        (\l (a, b) -> glUniform2f l a b)

mglProgramUniform3f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform3f =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniform3f p l a b c)
        (\l (a, b, c) -> glUniform3f l a b c)

mglProgramUniform4f :: GLuint -> GLint -> (GLfloat, GLfloat, GLfloat, GLfloat) -> FlextGLM ()
mglProgramUniform4f =
    makeProgramUniformFunction
        (\p l (a, b, c, d) -> glProgramUniform4f p l a b c d)
        (\l (a, b, c, d) -> glUniform4f l a b c d)

mglProgramUniformMatrix4fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> FlextGLM ()
mglProgramUniformMatrix4fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniformMatrix4fv p l a b c)
        (\l (a, b, c) -> glUniformMatrix4fv l a b c)

mglProgramUniformMatrix3fv :: GLuint -> GLint -> (GLsizei, GLboolean, Ptr GLfloat) -> FlextGLM ()
mglProgramUniformMatrix3fv =
    makeProgramUniformFunction
        (\p l (a, b, c) -> glProgramUniformMatrix3fv p l a b c)
        (\l (a, b, c) -> glUniformMatrix3fv l a b c)

makeProgramUniformFunction :: (GLuint -> GLint -> a -> FlextGL -> IO ())
                           -> (GLint -> a -> FlextGL -> IO ())
                           -> GLuint -> GLint -> a -> FlextGLM ()
makeProgramUniformFunction fun1 fun2 program loc args =
    branchExt has_GL_ARB_separate_shader_objects
              (fgl $ fun1 program loc args)
              (withBoundProgram program $ fgl $ fun2 loc args)
{-# INLINE makeProgramUniformFunction #-}

mglMapNamedBufferRange :: GLuint -> GLintptr
                       -> GLsizeiptr -> GLbitfield -> FlextGLM (Ptr ())
mglMapNamedBufferRange buffer offset length access =
    withBoundBuffer buffer $
        fgl $ glMapBufferRange gl_ARRAY_BUFFER offset length access

mglUnmapNamedBuffer :: GLuint -> FlextGLM GLboolean
mglUnmapNamedBuffer buffer =
    withBoundBuffer buffer $ fgl $ glUnmapBuffer gl_ARRAY_BUFFER

mglNamedCopyBufferSubData :: GLuint -> GLuint
                          -> GLintptr -> GLintptr -> GLsizeiptr -> FlextGLM ()
mglNamedCopyBufferSubData src dst src_offset dst_offset num_bytes =
    withBoundElementBuffer src $
        withBoundBuffer dst $
            fgl $ glCopyBufferSubData gl_ELEMENT_ARRAY_BUFFER
                                      gl_ARRAY_BUFFER
                                      src_offset
                                      dst_offset
                                      num_bytes

-- | Shortcut to `glGetIntegerv` when you query only one integer.
gi :: GLenum -> FlextGLM GLuint
gi x = do
    gl <- askGL
    liftIO $ alloca $ \get_ptr -> glGetIntegerv x (castPtr get_ptr) gl *>
                                  peek get_ptr

gf :: GLenum -> FlextGLM GLfloat
gf x = do
    gl <- askGL
    liftIO $ alloca $ \get_ptr -> glGetFloatv x (castPtr get_ptr) gl *>
                                  peek get_ptr

