-- | Module for using the raw OpenGL API.
--
-- This is a mixture from the OpenGLRaw package and some of our own stuff.
--
-- TODO: Some of this stuff should probably be in OpenGLRaw so we could add
-- stuff there instead.
--

{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

module Graphics.Caramia.Internal.OpenGLCApi
    ( module GLCore
    , module GLTypes

    , openGLVersion
    , OpenGLVersion(..)

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
    , mglDeleteQuery
    , mglGenQuery
    , mglNamedBufferData
    , mglNamedBufferStorage
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

import Control.Monad.IO.Class
import Control.Monad.Catch
import Data.Bits
import Foreign.C.Types
import Foreign.Marshal.Alloc
import Foreign.Marshal.Utils
import Foreign.Ptr
import Foreign.Storable
import Graphics.Caramia.Internal.Exception
import Graphics.Caramia.Internal.OpenGLVersion
import Graphics.Caramia.Prelude
import Graphics.GL.Standard21 as GLCore
import qualified Graphics.GL.Core33 as GL33
import Graphics.GL.Core33 as GLCore
import qualified Graphics.GL.Ext.EXT.GpuShader4 as EXT
import qualified Graphics.GL.Ext.ARB.InstancedArrays as ARB
import Graphics.GL.Ext.ARB.FramebufferObject ( gl_ARB_framebuffer_object )
import Graphics.GL.Ext.ARB.VertexArrayObject ( gl_ARB_vertex_array_object )
import Graphics.GL.Ext.ARB.BufferStorage
import Graphics.GL.Ext.ARB.CopyBuffer ( gl_ARB_copy_buffer )
import Graphics.GL.Ext.ARB.SeparateShaderObjects
import Graphics.GL.Ext.ARB.DirectStateAccess
import Graphics.GL.Ext.ARB.MapBufferRange
import Graphics.GL.Types as GLTypes

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

mglDeleteBuffer :: GLuint -> IO ()
mglDeleteBuffer x = with x $ \x_ptr -> glDeleteBuffers 1 x_ptr

mglDeleteVertexArray :: GLuint -> IO ()
mglDeleteVertexArray x = with x $ \x_ptr -> GL33.glDeleteVertexArrays 1 x_ptr

mglGenBuffer :: IO GLuint
mglGenBuffer = alloca $ \x_ptr -> do
    if gl_ARB_direct_state_access
      then glCreateBuffers 1 x_ptr
      else glGenBuffers 1 x_ptr
    peek x_ptr

mglGenVertexArray :: IO GLuint
mglGenVertexArray =
    checkOpenGLOrExtensionM (OpenGLVersion 3 0)
                            "GL_ARB_vertex_array_object"
                            gl_ARB_vertex_array_object
                            do_it
  where
    do_it = alloca $ \x_ptr -> GL33.glGenVertexArrays 1 x_ptr *> peek x_ptr

mglGenFramebuffer :: IO GLuint
mglGenFramebuffer =
    checkOpenGLOrExtensionM (OpenGLVersion 3 0)
                            "GL_ARB_framebuffer_object"
                            gl_ARB_framebuffer_object
                            do_it
  where
    do_it = alloca $ \x_ptr -> GL33.glGenFramebuffers 1 x_ptr *> peek x_ptr

mglDeleteFramebuffer :: GLuint -> IO ()
mglDeleteFramebuffer x = with x $ \x_ptr -> GL33.glDeleteFramebuffers 1 x_ptr

mglGenQuery :: IO GLuint
mglGenQuery = alloca $ \x_ptr -> glGenQueries 1 x_ptr *> peek x_ptr

mglDeleteQuery :: GLuint -> IO ()
mglDeleteQuery x = with x $ \x_ptr -> glDeleteQueries 1 x_ptr

withBoundDrawFramebuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundDrawFramebuffer x action = do
    checkOpenGLOrExtensionM (OpenGLVersion 3 0)
                            "GL_ARB_framebuffer_object"
                            gl_ARB_framebuffer_object
                            do_it
  where
    do_it = do
        old <- gi GL33.GL_DRAW_FRAMEBUFFER_BINDING
        finally (GL33.glBindFramebuffer GL33.GL_DRAW_FRAMEBUFFER x >> action)
                (GL33.glBindFramebuffer GL33.GL_DRAW_FRAMEBUFFER old)

withBoundProgram :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundProgram program action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv GL_CURRENT_PROGRAM x_ptr >> peek x_ptr
    finally (glUseProgram program >> action)
            (glUseProgram $ fromIntegral old)

setBoundProgram :: MonadIO m => GLuint -> m ()
setBoundProgram = glUseProgram

withBoundBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv GL_ARRAY_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer GL_ARRAY_BUFFER buf >> action)
            (glBindBuffer GL_ARRAY_BUFFER $ fromIntegral old)

setBoundElementBuffer :: GLuint -> IO ()
setBoundElementBuffer =
    glBindBuffer GL_ELEMENT_ARRAY_BUFFER

withBoundElementBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundElementBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv GL_ELEMENT_ARRAY_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer GL_ELEMENT_ARRAY_BUFFER buf >> action)
            (glBindBuffer GL_ELEMENT_ARRAY_BUFFER $ fromIntegral old)

withBoundPixelUnpackBuffer :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundPixelUnpackBuffer buf action = do
    old <-
        liftIO $ alloca $ \x_ptr -> glGetIntegerv GL_PIXEL_UNPACK_BUFFER_BINDING x_ptr >>
                                    peek x_ptr
    finally (glBindBuffer GL_PIXEL_UNPACK_BUFFER buf >> action)
            (glBindBuffer GL_PIXEL_UNPACK_BUFFER $ fromIntegral old)

withBoundVAO :: (MonadIO m, MonadMask m) => GLuint -> m a -> m a
withBoundVAO vao action = do
    checkOpenGLOrExtensionM (OpenGLVersion 3 0)
                            "GL_ARB_vertex_array_object"
                            gl_ARB_vertex_array_object
                            do_it
  where
    do_it = do
        old <- gi GL33.GL_VERTEX_ARRAY_BINDING
        finally (GL33.glBindVertexArray vao >> action)
                (GL33.glBindVertexArray $ fromIntegral old)

mglVertexArrayVertexAttribDivisor ::
    GLuint -> GLuint -> GLuint -> IO ()
mglVertexArrayVertexAttribDivisor vaobj index divisor = mask_ $
    withBoundVAO vaobj $
        if ver >= OpenGLVersion 3 3
          then GL33.glVertexAttribDivisor index divisor
          else do checkExtension "GL_ARB_instanced_arrays" ARB.gl_ARB_instanced_arrays
                  ARB.glVertexAttribDivisorARB index divisor
  where
    ver = openGLVersion

mglVertexArrayVertexAttribOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLboolean -> GLsizei -> CPtrdiff -> IO ()
mglVertexArrayVertexAttribOffsetAndEnable
    vaobj buffer index size dtype normalized stride (CPtrdiff offset) = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            glVertexAttribPointer index size dtype normalized stride
                                  (intPtrToPtr $ fromIntegral offset)

mglVertexArrayVertexAttribIOffsetAndEnable ::
        GLuint -> GLuint -> GLuint -> GLint -> GLenum
     -> GLsizei -> GLintptr -> IO ()
mglVertexArrayVertexAttribIOffsetAndEnable
    vaobj buffer index size dtype stride offset = mask_ $

    withBoundVAO vaobj $
        withBoundBuffer buffer $ do
            glEnableVertexAttribArray index
            unless (ver >= OpenGLVersion 3 0) $
                throwM $ NoSupport $
                "OpenGL 3.0 required for integer attribute mapping."
            GL33.glVertexAttribIPointer index size dtype stride
                                        (intPtrToPtr $ fromIntegral offset)
  where
    ver = openGLVersion

mglNamedBufferStorage :: GLuint
                      -> GLsizeiptr
                      -> Ptr a
                      -> GLbitfield
                      -> IO ()
mglNamedBufferStorage buf size ptr flags =
    if gl_ARB_direct_state_access
    then glNamedBufferStorage buf (fromIntegral size) (castPtr ptr) flags
    else withBoundBuffer buf $ glBufferStorage GL_ARRAY_BUFFER size (castPtr ptr) flags

mglNamedBufferData :: GLuint
                   -> GLsizeiptr
                   -> Ptr a
                   -> GLenum
                   -> IO ()
mglNamedBufferData buf size ptr usage =
    if gl_ARB_direct_state_access
    then glNamedBufferData buf (fromIntegral size) (castPtr ptr) usage
    else withBoundBuffer buf $ glBufferData GL_ARRAY_BUFFER size (castPtr ptr) usage

mglProgramUniform1ui :: GLuint -> GLint -> GLuint -> IO ()
mglProgramUniform1ui program loc v1 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform1ui program loc v1
    else withBoundProgram program $
             if ver >= OpenGLVersion 3 0
               then GL33.glUniform1ui loc v1
               else do checkExtension "GL_EXT_gpu_shader4" EXT.gl_EXT_gpu_shader4
                       EXT.glUniform1uiEXT loc v1
  where
    ver = openGLVersion

mglProgramUniform2ui :: GLuint -> GLint -> GLuint -> GLuint -> IO ()
mglProgramUniform2ui program loc v1 v2 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform2ui program loc v1 v2
    else withBoundProgram program $
             if ver >= OpenGLVersion 3 0
               then GL33.glUniform2ui loc v1 v2
               else do checkExtension "GL_EXT_gpu_shader4" EXT.gl_EXT_gpu_shader4
                       EXT.glUniform2uiEXT loc v1 v2
  where
    ver = openGLVersion

mglProgramUniform3ui :: GLuint -> GLint -> GLuint -> GLuint -> GLuint -> IO ()
mglProgramUniform3ui program loc v1 v2 v3 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform3ui program loc v1 v2 v3
    else withBoundProgram program $
             if ver >= OpenGLVersion 3 0
               then GL33.glUniform3ui loc v1 v2 v3
               else do checkExtension "GL_EXT_gpu_shader4" EXT.gl_EXT_gpu_shader4
                       EXT.glUniform3uiEXT loc v1 v2 v3
  where
    ver = openGLVersion

mglProgramUniform4ui :: GLuint -> GLint -> GLuint -> GLuint -> GLuint
                     -> GLuint -> IO ()
mglProgramUniform4ui program loc v1 v2 v3 v4 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform4ui program loc v1 v2 v3 v4
    else withBoundProgram program $
             if ver >= OpenGLVersion 3 0
               then GL33.glUniform4ui loc v1 v2 v3 v4
               else do checkExtension "GL_EXT_gpu_shader4" EXT.gl_EXT_gpu_shader4
                       EXT.glUniform4uiEXT loc v1 v2 v3 v4
  where
    ver = openGLVersion

mglProgramUniform1i :: GLuint -> GLint -> GLint -> IO ()
mglProgramUniform1i program loc v1 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform1i program loc v1
    else withBoundProgram program $ glUniform1i loc v1

mglProgramUniform2i :: GLuint -> GLint -> GLint -> GLint -> IO ()
mglProgramUniform2i program loc v1 v2 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform2i program loc v1 v2
    else withBoundProgram program $ glUniform2i loc v1 v2

mglProgramUniform3i :: GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()
mglProgramUniform3i program loc v1 v2 v3 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform3i program loc v1 v2 v3
    else withBoundProgram program $ glUniform3i loc v1 v2 v3

mglProgramUniform4i :: GLuint -> GLint -> GLint -> GLint -> GLint
                     -> GLint -> IO ()
mglProgramUniform4i program loc v1 v2 v3 v4 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform4i program loc v1 v2 v3 v4
    else withBoundProgram program $ glUniform4i loc v1 v2 v3 v4

mglProgramUniform1f :: GLuint -> GLint -> GLfloat -> IO ()
mglProgramUniform1f program loc v1 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform1f program loc v1
    else withBoundProgram program $ glUniform1f loc v1

mglProgramUniform2f :: GLuint -> GLint -> GLfloat -> GLfloat -> IO ()
mglProgramUniform2f program loc v1 v2 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform2f program loc v1 v2
    else withBoundProgram program $ glUniform2f loc v1 v2

mglProgramUniform3f :: GLuint -> GLint -> GLfloat -> GLfloat -> GLfloat -> IO ()
mglProgramUniform3f program loc v1 v2 v3 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform3f program loc v1 v2 v3
    else withBoundProgram program $ glUniform3f loc v1 v2 v3

mglProgramUniform4f :: GLuint -> GLint
                    -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
mglProgramUniform4f program loc v1 v2 v3 v4 =
    if gl_ARB_separate_shader_objects
    then glProgramUniform4f program loc v1 v2 v3 v4
    else withBoundProgram program $ glUniform4f loc v1 v2 v3 v4

mglProgramUniformMatrix4fv :: GLuint -> GLint
                           -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
mglProgramUniformMatrix4fv program loc count transpose m44 =
    if gl_ARB_separate_shader_objects
    then glProgramUniformMatrix4fv program loc count transpose m44
    else withBoundProgram program $ glUniformMatrix4fv loc count transpose m44

mglProgramUniformMatrix3fv :: GLuint -> GLint
                           -> GLsizei -> GLboolean -> Ptr GLfloat -> IO ()
mglProgramUniformMatrix3fv program loc count transpose m33 =
    if gl_ARB_separate_shader_objects
    then glProgramUniformMatrix3fv program loc count transpose m33
    else withBoundProgram program $ glUniformMatrix3fv loc count transpose m33

mglMapNamedBufferRange :: GLuint -> GLintptr
                       -> GLsizeiptr -> GLbitfield -> IO (Ptr a)
mglMapNamedBufferRange buffer offset length access = fmap castPtr $
    withBoundBuffer buffer $
        if | openGLVersion >= OpenGLVersion 3 0 ||
             gl_ARB_map_buffer_range
             -> glMapBufferRange GL_ARRAY_BUFFER offset length access
           | otherwise
             -- it is time to be sneaky. We only have the plain glMapBuffer. We
             -- can't specify offset or how much to map. What do we do??? We
             -- map the whole thing but return pointer to the offset. It's
             -- horrible but at least it works.
             -> case oldwayflags of
                    Just flags -> do
                        ptr <- glMapBuffer GL_ARRAY_BUFFER flags
                        return $ ptr `plusPtr` (fromIntegral offset)
                    -- return just some arbitrary pointer. Client specified
                    -- they don't read or write to it so does it matter?
                    Nothing -> return $ nullPtr `plusPtr` 1
  where
    oldwayflags =
        let can_read = access .&. GL_MAP_READ_BIT /= 0
            can_write = access .&. GL_MAP_WRITE_BIT /= 0
         in if | can_read && can_write -> Just GL_READ_WRITE
               | can_read -> Just GL_READ_ONLY
               | can_write -> Just GL_WRITE_ONLY
               | otherwise -> Nothing


mglUnmapNamedBuffer :: GLuint -> IO GLboolean
mglUnmapNamedBuffer buffer =
    withBoundBuffer buffer $ glUnmapBuffer GL_ARRAY_BUFFER

mglNamedCopyBufferSubData :: GLuint -> GLuint
                          -> GLintptr -> GLintptr -> GLsizeiptr -> IO ()
mglNamedCopyBufferSubData src dst src_offset dst_offset num_bytes =
    withBoundElementBuffer src $
        withBoundBuffer dst $ do
            checkOpenGLOrExtensionM (OpenGLVersion 3 1)
                                    "GL_ARB_copy_buffer"
                                    gl_ARB_copy_buffer $
                GL33.glCopyBufferSubData GL_ELEMENT_ARRAY_BUFFER
                                         GL_ARRAY_BUFFER
                                         src_offset
                                         dst_offset
                                         num_bytes

-- | Shortcut to `glGetIntegerv` when you query only one integer.
gi :: MonadIO m => GLenum -> m GLuint
gi x = liftIO $ alloca $ \get_ptr -> glGetIntegerv x (castPtr get_ptr) *>
                            peek get_ptr

gf :: MonadIO m => GLenum -> m GLfloat
gf x = liftIO $ alloca $ \get_ptr -> glGetFloatv x (castPtr get_ptr) *> peek get_ptr
