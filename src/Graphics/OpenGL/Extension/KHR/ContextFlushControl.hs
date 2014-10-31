-- This file was automatically generated.
module Graphics.OpenGL.Extension.KHR.ContextFlushControl (
	-- * Extension Support
	  gl_KHR_context_flush_control

	-- * GL_KHR_context_flush_control
	, gl_CONTEXT_RELEASE_BEHAVIOR
	, gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH
	, gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR
	, gl_CONTEXT_RELEASE_BEHAVIOR_KHR
	, gl_NONE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_KHR_context_flush_control :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_KHR_context_flush_control = extGL 415

gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR :: GLenum
gl_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR = 0x82FC

gl_CONTEXT_RELEASE_BEHAVIOR_KHR :: GLenum
gl_CONTEXT_RELEASE_BEHAVIOR_KHR = 0x82FB