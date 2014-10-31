-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.FramebufferObject (
	-- * Extension Support
	  gl_EXT_framebuffer_object

	-- * GL_EXT_framebuffer_object
	, glBindFramebufferEXT
	, glBindRenderbufferEXT
	, glCheckFramebufferStatusEXT
	, glDeleteFramebuffersEXT
	, glDeleteRenderbuffersEXT
	, glFramebufferRenderbufferEXT
	, glFramebufferTexture1DEXT
	, glFramebufferTexture2DEXT
	, glFramebufferTexture3DEXT
	, glGenFramebuffersEXT
	, glGenRenderbuffersEXT
	, glGenerateMipmapEXT
	, glGetFramebufferAttachmentParameterivEXT
	, glGetRenderbufferParameterivEXT
	, glIsFramebufferEXT
	, glIsRenderbufferEXT
	, glRenderbufferStorageEXT
	, gl_COLOR_ATTACHMENT0_EXT
	, gl_COLOR_ATTACHMENT10_EXT
	, gl_COLOR_ATTACHMENT11_EXT
	, gl_COLOR_ATTACHMENT12_EXT
	, gl_COLOR_ATTACHMENT13_EXT
	, gl_COLOR_ATTACHMENT14_EXT
	, gl_COLOR_ATTACHMENT15_EXT
	, gl_COLOR_ATTACHMENT1_EXT
	, gl_COLOR_ATTACHMENT2_EXT
	, gl_COLOR_ATTACHMENT3_EXT
	, gl_COLOR_ATTACHMENT4_EXT
	, gl_COLOR_ATTACHMENT5_EXT
	, gl_COLOR_ATTACHMENT6_EXT
	, gl_COLOR_ATTACHMENT7_EXT
	, gl_COLOR_ATTACHMENT8_EXT
	, gl_COLOR_ATTACHMENT9_EXT
	, gl_DEPTH_ATTACHMENT_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
	, gl_FRAMEBUFFER_BINDING_EXT
	, gl_FRAMEBUFFER_COMPLETE_EXT
	, gl_FRAMEBUFFER_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
	, gl_FRAMEBUFFER_UNSUPPORTED_EXT
	, gl_INVALID_FRAMEBUFFER_OPERATION_EXT
	, gl_MAX_COLOR_ATTACHMENTS_EXT
	, gl_MAX_RENDERBUFFER_SIZE_EXT
	, gl_RENDERBUFFER_ALPHA_SIZE_EXT
	, gl_RENDERBUFFER_BINDING_EXT
	, gl_RENDERBUFFER_BLUE_SIZE_EXT
	, gl_RENDERBUFFER_DEPTH_SIZE_EXT
	, gl_RENDERBUFFER_EXT
	, gl_RENDERBUFFER_GREEN_SIZE_EXT
	, gl_RENDERBUFFER_HEIGHT_EXT
	, gl_RENDERBUFFER_INTERNAL_FORMAT_EXT
	, gl_RENDERBUFFER_RED_SIZE_EXT
	, gl_RENDERBUFFER_STENCIL_SIZE_EXT
	, gl_RENDERBUFFER_WIDTH_EXT
	, gl_STENCIL_ATTACHMENT_EXT
	, gl_STENCIL_INDEX16_EXT
	, gl_STENCIL_INDEX1_EXT
	, gl_STENCIL_INDEX4_EXT
	, gl_STENCIL_INDEX8_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_framebuffer_object :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_framebuffer_object = extGL 281

glBindFramebufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindFramebufferEXT v0 v1 = funGL 1248 >>= \f -> liftIO $ f v0 v1

glBindRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glBindRenderbufferEXT v0 v1 = funGL 1249 >>= \f -> liftIO $ f v0 v1

glCheckFramebufferStatusEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m GLenum
glCheckFramebufferStatusEXT v0 = funGL 1250 >>= \f -> liftIO $ f v0

glDeleteFramebuffersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteFramebuffersEXT v0 v1 = funGL 1251 >>= \f -> liftIO $ f v0 v1

glDeleteRenderbuffersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glDeleteRenderbuffersEXT v0 v1 = funGL 1252 >>= \f -> liftIO $ f v0 v1

glFramebufferRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> m ()
glFramebufferRenderbufferEXT v0 v1 v2 v3 = funGL 1253 >>= \f -> liftIO $ f v0 v1 v2 v3

glFramebufferTexture1DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTexture1DEXT v0 v1 v2 v3 v4 = funGL 1254 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glFramebufferTexture2DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> m ()
glFramebufferTexture2DEXT v0 v1 v2 v3 v4 = funGL 1255 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glFramebufferTexture3DEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
glFramebufferTexture3DEXT v0 v1 v2 v3 v4 v5 = funGL 1256 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGenFramebuffersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenFramebuffersEXT v0 v1 = funGL 1257 >>= \f -> liftIO $ f v0 v1

glGenRenderbuffersEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLuint -> m ()
glGenRenderbuffersEXT v0 v1 = funGL 1258 >>= \f -> liftIO $ f v0 v1

glGenerateMipmapEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glGenerateMipmapEXT v0 = funGL 1259 >>= \f -> liftIO $ f v0

glGetFramebufferAttachmentParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> Ptr GLint -> m ()
glGetFramebufferAttachmentParameterivEXT v0 v1 v2 v3 = funGL 1260 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetRenderbufferParameterivEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetRenderbufferParameterivEXT v0 v1 v2 = funGL 1261 >>= \f -> liftIO $ f v0 v1 v2

glIsFramebufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsFramebufferEXT v0 = funGL 1262 >>= \f -> liftIO $ f v0

glIsRenderbufferEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m GLboolean
glIsRenderbufferEXT v0 = funGL 1263 >>= \f -> liftIO $ f v0

glRenderbufferStorageEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> m ()
glRenderbufferStorageEXT v0 v1 v2 v3 = funGL 1264 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_DEPTH_ATTACHMENT_EXT :: GLenum
gl_DEPTH_ATTACHMENT_EXT = 0x8D00

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT = 0x8CD1

gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT = 0x8CD0

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT = 0x8CD4

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 0x8CD3

gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT :: GLenum
gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT = 0x8CD2

gl_FRAMEBUFFER_BINDING_EXT :: GLenum
gl_FRAMEBUFFER_BINDING_EXT = 0x8CA6

gl_FRAMEBUFFER_COMPLETE_EXT :: GLenum
gl_FRAMEBUFFER_COMPLETE_EXT = 0x8CD5

gl_FRAMEBUFFER_EXT :: GLenum
gl_FRAMEBUFFER_EXT = 0x8D40

gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT = 0x8CD6

gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT = 0x8CD9

gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT = 0x8CDB

gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT = 0x8CDA

gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT = 0x8CD7

gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT :: GLenum
gl_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT = 0x8CDC

gl_FRAMEBUFFER_UNSUPPORTED_EXT :: GLenum
gl_FRAMEBUFFER_UNSUPPORTED_EXT = 0x8CDD

gl_INVALID_FRAMEBUFFER_OPERATION_EXT :: GLenum
gl_INVALID_FRAMEBUFFER_OPERATION_EXT = 0x0506

gl_MAX_RENDERBUFFER_SIZE_EXT :: GLenum
gl_MAX_RENDERBUFFER_SIZE_EXT = 0x84E8

gl_RENDERBUFFER_ALPHA_SIZE_EXT :: GLenum
gl_RENDERBUFFER_ALPHA_SIZE_EXT = 0x8D53

gl_RENDERBUFFER_BINDING_EXT :: GLenum
gl_RENDERBUFFER_BINDING_EXT = 0x8CA7

gl_RENDERBUFFER_BLUE_SIZE_EXT :: GLenum
gl_RENDERBUFFER_BLUE_SIZE_EXT = 0x8D52

gl_RENDERBUFFER_DEPTH_SIZE_EXT :: GLenum
gl_RENDERBUFFER_DEPTH_SIZE_EXT = 0x8D54

gl_RENDERBUFFER_EXT :: GLenum
gl_RENDERBUFFER_EXT = 0x8D41

gl_RENDERBUFFER_GREEN_SIZE_EXT :: GLenum
gl_RENDERBUFFER_GREEN_SIZE_EXT = 0x8D51

gl_RENDERBUFFER_HEIGHT_EXT :: GLenum
gl_RENDERBUFFER_HEIGHT_EXT = 0x8D43

gl_RENDERBUFFER_INTERNAL_FORMAT_EXT :: GLenum
gl_RENDERBUFFER_INTERNAL_FORMAT_EXT = 0x8D44

gl_RENDERBUFFER_RED_SIZE_EXT :: GLenum
gl_RENDERBUFFER_RED_SIZE_EXT = 0x8D50

gl_RENDERBUFFER_STENCIL_SIZE_EXT :: GLenum
gl_RENDERBUFFER_STENCIL_SIZE_EXT = 0x8D55

gl_RENDERBUFFER_WIDTH_EXT :: GLenum
gl_RENDERBUFFER_WIDTH_EXT = 0x8D42

gl_STENCIL_ATTACHMENT_EXT :: GLenum
gl_STENCIL_ATTACHMENT_EXT = 0x8D20

gl_STENCIL_INDEX16_EXT :: GLenum
gl_STENCIL_INDEX16_EXT = 0x8D49

gl_STENCIL_INDEX1_EXT :: GLenum
gl_STENCIL_INDEX1_EXT = 0x8D46

gl_STENCIL_INDEX4_EXT :: GLenum
gl_STENCIL_INDEX4_EXT = 0x8D47

gl_STENCIL_INDEX8_EXT :: GLenum
gl_STENCIL_INDEX8_EXT = 0x8D48