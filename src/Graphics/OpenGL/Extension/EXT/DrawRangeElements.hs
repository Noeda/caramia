-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DrawRangeElements (
	-- * Extension Support
	  gl_EXT_draw_range_elements

	-- * GL_EXT_draw_range_elements
	, glDrawRangeElementsEXT
	, gl_MAX_ELEMENTS_INDICES_EXT
	, gl_MAX_ELEMENTS_VERTICES_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_draw_range_elements :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_draw_range_elements = extGL 276

glDrawRangeElementsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Ptr () -> m ()
glDrawRangeElementsEXT v0 v1 v2 v3 v4 v5 = funGL 1240 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

gl_MAX_ELEMENTS_INDICES_EXT :: GLenum
gl_MAX_ELEMENTS_INDICES_EXT = 0x80E9

gl_MAX_ELEMENTS_VERTICES_EXT :: GLenum
gl_MAX_ELEMENTS_VERTICES_EXT = 0x80E8