-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TimerQuery (
	-- * Extension Support
	  gl_ARB_timer_query

	-- * GL_ARB_timer_query
	, glGetQueryObjecti64v
	, glGetQueryObjectui64v
	, glQueryCounter
	, gl_TIMESTAMP
	, gl_TIME_ELAPSED
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_timer_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_timer_query = extGL 204