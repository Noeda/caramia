-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TimerQuery (
	-- * Extension Support
	  gl_EXT_timer_query

	-- * GL_EXT_timer_query
	, glGetQueryObjecti64vEXT
	, glGetQueryObjectui64vEXT
	, gl_TIME_ELAPSED_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_timer_query :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_timer_query = extGL 376