-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TransformFeedback3 (
	-- * Extension Support
	  gl_ARB_transform_feedback3

	-- * GL_ARB_transform_feedback3
	, glBeginQueryIndexed
	, glDrawTransformFeedbackStream
	, glEndQueryIndexed
	, glGetQueryIndexediv
	, gl_MAX_TRANSFORM_FEEDBACK_BUFFERS
	, gl_MAX_VERTEX_STREAMS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_transform_feedback3 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_transform_feedback3 = extGL 206