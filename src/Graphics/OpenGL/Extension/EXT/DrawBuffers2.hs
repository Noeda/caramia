-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DrawBuffers2 (
	-- * Extension Support
	  gl_EXT_draw_buffers2

	-- * GL_EXT_draw_buffers2
	, glColorMaskIndexedEXT
	, glDisableIndexedEXT
	, glEnableIndexedEXT
	, glGetBooleanIndexedvEXT
	, glGetIntegerIndexedvEXT
	, glIsEnabledIndexedEXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_draw_buffers2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_draw_buffers2 = extGL 273

glColorMaskIndexedEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
glColorMaskIndexedEXT v0 v1 v2 v3 v4 = funGL 1229 >>= \f -> liftIO $ f v0 v1 v2 v3 v4