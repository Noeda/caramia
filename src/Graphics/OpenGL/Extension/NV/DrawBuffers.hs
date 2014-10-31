-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.DrawBuffers (
	-- * Extension Support
	  gl_NV_draw_buffers

	-- * GL_NV_draw_buffers
	, glDrawBuffersNV
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
	, gl_DRAW_BUFFER0_NV
	, gl_DRAW_BUFFER10_NV
	, gl_DRAW_BUFFER11_NV
	, gl_DRAW_BUFFER12_NV
	, gl_DRAW_BUFFER13_NV
	, gl_DRAW_BUFFER14_NV
	, gl_DRAW_BUFFER15_NV
	, gl_DRAW_BUFFER1_NV
	, gl_DRAW_BUFFER2_NV
	, gl_DRAW_BUFFER3_NV
	, gl_DRAW_BUFFER4_NV
	, gl_DRAW_BUFFER5_NV
	, gl_DRAW_BUFFER6_NV
	, gl_DRAW_BUFFER7_NV
	, gl_DRAW_BUFFER8_NV
	, gl_DRAW_BUFFER9_NV
	, gl_MAX_DRAW_BUFFERS_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_draw_buffers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_draw_buffers = extGL 445

glDrawBuffersNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLenum -> m ()
glDrawBuffersNV v0 v1 = funGL 1590 >>= \f -> liftIO $ f v0 v1

gl_DRAW_BUFFER0_NV :: GLenum
gl_DRAW_BUFFER0_NV = 0x8825

gl_DRAW_BUFFER10_NV :: GLenum
gl_DRAW_BUFFER10_NV = 0x882F

gl_DRAW_BUFFER11_NV :: GLenum
gl_DRAW_BUFFER11_NV = 0x8830

gl_DRAW_BUFFER12_NV :: GLenum
gl_DRAW_BUFFER12_NV = 0x8831

gl_DRAW_BUFFER13_NV :: GLenum
gl_DRAW_BUFFER13_NV = 0x8832

gl_DRAW_BUFFER14_NV :: GLenum
gl_DRAW_BUFFER14_NV = 0x8833

gl_DRAW_BUFFER15_NV :: GLenum
gl_DRAW_BUFFER15_NV = 0x8834

gl_DRAW_BUFFER1_NV :: GLenum
gl_DRAW_BUFFER1_NV = 0x8826

gl_DRAW_BUFFER2_NV :: GLenum
gl_DRAW_BUFFER2_NV = 0x8827

gl_DRAW_BUFFER3_NV :: GLenum
gl_DRAW_BUFFER3_NV = 0x8828

gl_DRAW_BUFFER4_NV :: GLenum
gl_DRAW_BUFFER4_NV = 0x8829

gl_DRAW_BUFFER5_NV :: GLenum
gl_DRAW_BUFFER5_NV = 0x882A

gl_DRAW_BUFFER6_NV :: GLenum
gl_DRAW_BUFFER6_NV = 0x882B

gl_DRAW_BUFFER7_NV :: GLenum
gl_DRAW_BUFFER7_NV = 0x882C

gl_DRAW_BUFFER8_NV :: GLenum
gl_DRAW_BUFFER8_NV = 0x882D

gl_DRAW_BUFFER9_NV :: GLenum
gl_DRAW_BUFFER9_NV = 0x882E

gl_MAX_DRAW_BUFFERS_NV :: GLenum
gl_MAX_DRAW_BUFFERS_NV = 0x8824