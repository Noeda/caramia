-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.TransformFeedback4 (
	-- * Extension Support
	  gl_AMD_transform_feedback4

	-- * GL_AMD_transform_feedback4
	, gl_STREAM_RASTERIZATION_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_transform_feedback4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_transform_feedback4 = extGL 29

gl_STREAM_RASTERIZATION_AMD :: GLenum
gl_STREAM_RASTERIZATION_AMD = 0x91A0