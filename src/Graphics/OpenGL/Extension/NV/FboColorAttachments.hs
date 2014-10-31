-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FboColorAttachments (
	-- * Extension Support
	  gl_NV_fbo_color_attachments

	-- * GL_NV_fbo_color_attachments
	, gl_COLOR_ATTACHMENT0_NV
	, gl_COLOR_ATTACHMENT10_NV
	, gl_COLOR_ATTACHMENT11_NV
	, gl_COLOR_ATTACHMENT12_NV
	, gl_COLOR_ATTACHMENT13_NV
	, gl_COLOR_ATTACHMENT14_NV
	, gl_COLOR_ATTACHMENT15_NV
	, gl_COLOR_ATTACHMENT1_NV
	, gl_COLOR_ATTACHMENT2_NV
	, gl_COLOR_ATTACHMENT3_NV
	, gl_COLOR_ATTACHMENT4_NV
	, gl_COLOR_ATTACHMENT5_NV
	, gl_COLOR_ATTACHMENT6_NV
	, gl_COLOR_ATTACHMENT7_NV
	, gl_COLOR_ATTACHMENT8_NV
	, gl_COLOR_ATTACHMENT9_NV
	, gl_MAX_COLOR_ATTACHMENTS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_fbo_color_attachments :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fbo_color_attachments = extGL 451

gl_MAX_COLOR_ATTACHMENTS_NV :: GLenum
gl_MAX_COLOR_ATTACHMENTS_NV = 0x8CDF