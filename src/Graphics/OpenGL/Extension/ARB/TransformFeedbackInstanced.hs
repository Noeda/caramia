-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TransformFeedbackInstanced (
	-- * Extension Support
	  gl_ARB_transform_feedback_instanced

	-- * GL_ARB_transform_feedback_instanced
	, glDrawTransformFeedbackInstanced
	, glDrawTransformFeedbackStreamInstanced
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_transform_feedback_instanced :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_transform_feedback_instanced = extGL 207