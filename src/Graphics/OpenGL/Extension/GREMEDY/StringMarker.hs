-- This file was automatically generated.
module Graphics.OpenGL.Extension.GREMEDY.StringMarker (
	-- * Extension Support
	  gl_GREMEDY_string_marker

	-- * GL_GREMEDY_string_marker
	, glStringMarkerGREMEDY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_GREMEDY_string_marker :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_GREMEDY_string_marker = extGL 387

glStringMarkerGREMEDY :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr () -> m ()
glStringMarkerGREMEDY v0 v1 = funGL 1463 >>= \f -> liftIO $ f v0 v1