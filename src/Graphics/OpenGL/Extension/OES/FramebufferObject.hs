-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.FramebufferObject (
	-- * Extension Support
	  gl_OES_framebuffer_object

	-- * GL_OES_framebuffer_object
	, glBindFramebufferOES
	, glBindRenderbufferOES
	, glCheckFramebufferStatusOES
	, glDeleteFramebuffersOES
	, glDeleteRenderbuffersOES
	, glFramebufferRenderbufferOES
	, glFramebufferTexture2DOES
	, glGenFramebuffersOES
	, glGenRenderbuffersOES
	, glGenerateMipmapOES
	, glGetFramebufferAttachmentParameterivOES
	, glGetRenderbufferParameterivOES
	, glIsFramebufferOES
	, glIsRenderbufferOES
	, glRenderbufferStorageOES
	, gl_COLOR_ATTACHMENT0_OES
	, gl_DEPTH_ATTACHMENT_OES
	, gl_DEPTH_COMPONENT16_OES
	, gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES
	, gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES
	, gl_FRAMEBUFFER_BINDING_OES
	, gl_FRAMEBUFFER_COMPLETE_OES
	, gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_OES
	, gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_OES
	, gl_FRAMEBUFFER_INCOMPLETE_FORMATS_OES
	, gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_OES
	, gl_FRAMEBUFFER_OES
	, gl_FRAMEBUFFER_UNSUPPORTED_OES
	, gl_INVALID_FRAMEBUFFER_OPERATION_OES
	, gl_MAX_RENDERBUFFER_SIZE_OES
	, gl_NONE_OES
	, gl_RENDERBUFFER_ALPHA_SIZE_OES
	, gl_RENDERBUFFER_BINDING_OES
	, gl_RENDERBUFFER_BLUE_SIZE_OES
	, gl_RENDERBUFFER_DEPTH_SIZE_OES
	, gl_RENDERBUFFER_GREEN_SIZE_OES
	, gl_RENDERBUFFER_HEIGHT_OES
	, gl_RENDERBUFFER_INTERNAL_FORMAT_OES
	, gl_RENDERBUFFER_OES
	, gl_RENDERBUFFER_RED_SIZE_OES
	, gl_RENDERBUFFER_STENCIL_SIZE_OES
	, gl_RENDERBUFFER_WIDTH_OES
	, gl_RGB565_OES
	, gl_RGB5_A1_OES
	, gl_RGBA4_OES
	, gl_STENCIL_ATTACHMENT_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_framebuffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_framebuffer_object = extGL 560

glBindFramebufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindFramebufferOES v0 v1 = funGL 2131 >>= \f -> liftIO $ f v0 v1

glBindRenderbufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindRenderbufferOES v0 v1 = funGL 2132 >>= \f -> liftIO $ f v0 v1

glCheckFramebufferStatusOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLenum
glCheckFramebufferStatusOES v0 = funGL 2133 >>= \f -> liftIO $ f v0

glDeleteFramebuffersOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteFramebuffersOES v0 v1 = funGL 2134 >>= \f -> liftIO $ f v0 v1

glDeleteRenderbuffersOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteRenderbuffersOES v0 v1 = funGL 2135 >>= \f -> liftIO $ f v0 v1

glFramebufferRenderbufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> m ()
glFramebufferRenderbufferOES v0 v1 v2 v3 = funGL 2136 >>= \f -> liftIO $ f v0 v1 v2 v3

glFramebufferTexture2DOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTexture2DOES v0 v1 v2 v3 v4 = funGL 2137 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGenFramebuffersOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenFramebuffersOES v0 v1 = funGL 2138 >>= \f -> liftIO $ f v0 v1

glGenRenderbuffersOES :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenRenderbuffersOES v0 v1 = funGL 2139 >>= \f -> liftIO $ f v0 v1

glGenerateMipmapOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glGenerateMipmapOES v0 = funGL 2140 >>= \f -> liftIO $ f v0

glGetFramebufferAttachmentParameterivOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetFramebufferAttachmentParameterivOES v0 v1 v2 v3 = funGL 2141 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetRenderbufferParameterivOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetRenderbufferParameterivOES v0 v1 v2 = funGL 2142 >>= \f -> liftIO $ f v0 v1 v2

glIsFramebufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsFramebufferOES v0 = funGL 2143 >>= \f -> liftIO $ f v0

glIsRenderbufferOES :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsRenderbufferOES v0 = funGL 2144 >>= \f -> liftIO $ f v0

glRenderbufferStorageOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageOES v0 v1 v2 v3 = funGL 2145 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_COLOR_ATTACHMENT0_OES :: GLenum
gl_COLOR_ATTACHMENT0_OES = 0x8CE0

gl_DEPTH_ATTACHMENT_OES :: GLenum
gl_DEPTH_ATTACHMENT_OES = 0x8D00

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_OES = 0x8CD1

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_OES = 0x8CD0

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_OES = 0x8CD3

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_OES = 0x8CD2

gl_FRAMEBUFFER_BINDING_OES :: GLenum
gl_FRAMEBUFFER_BINDING_OES = 0x8CA6

gl_FRAMEBUFFER_COMPLETE_OES :: GLenum
gl_FRAMEBUFFER_COMPLETE_OES = 0x8CD5

gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_OES :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_OES = 0x8CD6

gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_OES :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_OES = 0x8CD9

gl_FRAMEBUFFER_INCOMPLETE_FORMATS_OES :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_FORMATS_OES = 0x8CDA

gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_OES :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_OES = 0x8CD7

gl_FRAMEBUFFER_OES :: GLenum
gl_FRAMEBUFFER_OES = 0x8D40

gl_FRAMEBUFFER_UNSUPPORTED_OES :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED_OES = 0x8CDD

gl_INVALID_FRAMEBUFFER_OPERATION_OES :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION_OES = 0x0506

gl_MAX_RENDERBUFFER_SIZE_OES :: GLenum
gl_MAX_RENDERBUFFER_SIZE_OES = 0x84E8

gl_NONE_OES :: GLenum
gl_NONE_OES = 0

gl_RENDERBUFFER_ALPHA_SIZE_OES :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE_OES = 0x8D53

gl_RENDERBUFFER_BINDING_OES :: GLenum
gl_RENDERBUFFER_BINDING_OES = 0x8CA7

gl_RENDERBUFFER_BLUE_SIZE_OES :: GLenum
gl_RENDERBUFFER_BLUE_SIZE_OES = 0x8D52

gl_RENDERBUFFER_DEPTH_SIZE_OES :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE_OES = 0x8D54

gl_RENDERBUFFER_GREEN_SIZE_OES :: GLenum
gl_RENDERBUFFER_GREEN_SIZE_OES = 0x8D51

gl_RENDERBUFFER_HEIGHT_OES :: GLenum
gl_RENDERBUFFER_HEIGHT_OES = 0x8D43

gl_RENDERBUFFER_INTERNAL_FORMAT_OES :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT_OES = 0x8D44

gl_RENDERBUFFER_OES :: GLenum
gl_RENDERBUFFER_OES = 0x8D41

gl_RENDERBUFFER_RED_SIZE_OES :: GLenum
gl_RENDERBUFFER_RED_SIZE_OES = 0x8D50

gl_RENDERBUFFER_STENCIL_SIZE_OES :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE_OES = 0x8D55

gl_RENDERBUFFER_WIDTH_OES :: GLenum
gl_RENDERBUFFER_WIDTH_OES = 0x8D42

gl_STENCIL_ATTACHMENT_OES :: GLenum
gl_STENCIL_ATTACHMENT_OES = 0x8D20