-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.TagSampleBuffer (
	-- * Extension Support
	  gl_SGIX_tag_sample_buffer

	-- * GL_SGIX_tag_sample_buffer
	, glTagSampleBufferSGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_tag_sample_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_tag_sample_buffer = extGL 656

glTagSampleBufferSGIX :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glTagSampleBufferSGIX = funGL 2278 >>= \f -> liftIO $ f