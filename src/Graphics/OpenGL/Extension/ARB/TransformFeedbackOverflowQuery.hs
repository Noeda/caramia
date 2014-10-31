-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TransformFeedbackOverflowQuery (
	-- * Extension Support
	  gl_ARB_transform_feedback_overflow_query

	-- * GL_ARB_transform_feedback_overflow_query
	, gl_TRANSFORM_FEEDBACK_OVERFLOW_ARB
	, gl_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_transform_feedback_overflow_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_transform_feedback_overflow_query = extGL 208

gl_TRANSFORM_FEEDBACK_OVERFLOW_ARB :: GLenum
gl_TRANSFORM_FEEDBACK_OVERFLOW_ARB = 0x82EC

gl_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB :: GLenum
gl_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB = 0x82ED