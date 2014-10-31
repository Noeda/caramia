-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DrawBuffersIndexed (
	-- * Extension Support
	  gl_EXT_draw_buffers_indexed

	-- * GL_EXT_draw_buffers_indexed
	, glBlendEquationSeparateiEXT
	, glBlendEquationiEXT
	, glBlendFuncSeparateiEXT
	, glBlendFunciEXT
	, glColorMaskiEXT
	, glDisableiEXT
	, glEnableiEXT
	, glIsEnablediEXT
	, gl_BLEND
	, gl_BLEND_DST_ALPHA
	, gl_BLEND_DST_RGB
	, gl_BLEND_EQUATION_ALPHA
	, gl_BLEND_EQUATION_RGB
	, gl_BLEND_SRC_ALPHA
	, gl_BLEND_SRC_RGB
	, gl_COLOR_WRITEMASK
	, gl_CONSTANT_ALPHA
	, gl_CONSTANT_COLOR
	, gl_DST_ALPHA
	, gl_DST_COLOR
	, gl_FUNC_ADD
	, gl_FUNC_REVERSE_SUBTRACT
	, gl_FUNC_SUBTRACT
	, gl_MAX
	, gl_MIN
	, gl_ONE
	, gl_ONE_MINUS_CONSTANT_ALPHA
	, gl_ONE_MINUS_CONSTANT_COLOR
	, gl_ONE_MINUS_DST_ALPHA
	, gl_ONE_MINUS_DST_COLOR
	, gl_ONE_MINUS_SRC_ALPHA
	, gl_ONE_MINUS_SRC_COLOR
	, gl_SRC_ALPHA
	, gl_SRC_ALPHA_SATURATE
	, gl_SRC_COLOR
	, gl_ZERO
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_draw_buffers_indexed :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_draw_buffers_indexed = extGL 274

glBlendEquationSeparateiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendEquationSeparateiEXT v0 v1 v2 = funGL 1230 >>= \f -> liftIO $ f v0 v1 v2

glBlendEquationiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glBlendEquationiEXT v0 v1 = funGL 1231 >>= \f -> liftIO $ f v0 v1

glBlendFuncSeparateiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
glBlendFuncSeparateiEXT v0 v1 v2 v3 v4 = funGL 1232 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glBlendFunciEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> m ()
glBlendFunciEXT v0 v1 v2 = funGL 1233 >>= \f -> liftIO $ f v0 v1 v2

glColorMaskiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
glColorMaskiEXT v0 v1 v2 v3 v4 = funGL 1234 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glDisableiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glDisableiEXT v0 v1 = funGL 1235 >>= \f -> liftIO $ f v0 v1

glEnableiEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glEnableiEXT v0 v1 = funGL 1236 >>= \f -> liftIO $ f v0 v1

glIsEnablediEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m GLboolean
glIsEnablediEXT v0 v1 = funGL 1237 >>= \f -> liftIO $ f v0 v1