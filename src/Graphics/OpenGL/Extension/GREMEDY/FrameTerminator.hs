-- This file was automatically generated.
module Graphics.OpenGL.Extension.GREMEDY.FrameTerminator (
	-- * Extension Support
	  gl_GREMEDY_frame_terminator

	-- * GL_GREMEDY_frame_terminator
	, glFrameTerminatorGREMEDY
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_GREMEDY_frame_terminator :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_GREMEDY_frame_terminator = extGL 386

glFrameTerminatorGREMEDY :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFrameTerminatorGREMEDY = funGL 1462 >>= \f -> liftIO $ f