-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.AsyncHistogram (
	-- * Extension Support
	  gl_SGIX_async_histogram

	-- * GL_SGIX_async_histogram
	, gl_ASYNC_HISTOGRAM_SGIX
	, gl_MAX_ASYNC_HISTOGRAM_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_async_histogram :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_async_histogram = extGL 629

gl_ASYNC_HISTOGRAM_SGIX :: GLenum
gl_ASYNC_HISTOGRAM_SGIX = 0x832C

gl_MAX_ASYNC_HISTOGRAM_SGIX :: GLenum
gl_MAX_ASYNC_HISTOGRAM_SGIX = 0x832D