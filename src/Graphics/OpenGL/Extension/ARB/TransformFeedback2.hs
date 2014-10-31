-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TransformFeedback2 (
	-- * Extension Support
	  gl_ARB_transform_feedback2

	-- * GL_ARB_transform_feedback2
	, glBindTransformFeedback
	, glDeleteTransformFeedbacks
	, glDrawTransformFeedback
	, glGenTransformFeedbacks
	, glIsTransformFeedback
	, glPauseTransformFeedback
	, glResumeTransformFeedback
	, gl_TRANSFORM_FEEDBACK
	, gl_TRANSFORM_FEEDBACK_BINDING
	, gl_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
	, gl_TRANSFORM_FEEDBACK_BUFFER_PAUSED
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_transform_feedback2 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_transform_feedback2 = extGL 205