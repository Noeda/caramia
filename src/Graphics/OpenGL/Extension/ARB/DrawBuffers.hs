-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.DrawBuffers (
	-- * Extension Support
	  gl_ARB_draw_buffers

	-- * GL_ARB_draw_buffers
	, glDrawBuffersARB
	, gl_DRAW_BUFFER0_ARB
	, gl_DRAW_BUFFER10_ARB
	, gl_DRAW_BUFFER11_ARB
	, gl_DRAW_BUFFER12_ARB
	, gl_DRAW_BUFFER13_ARB
	, gl_DRAW_BUFFER14_ARB
	, gl_DRAW_BUFFER15_ARB
	, gl_DRAW_BUFFER1_ARB
	, gl_DRAW_BUFFER2_ARB
	, gl_DRAW_BUFFER3_ARB
	, gl_DRAW_BUFFER4_ARB
	, gl_DRAW_BUFFER5_ARB
	, gl_DRAW_BUFFER6_ARB
	, gl_DRAW_BUFFER7_ARB
	, gl_DRAW_BUFFER8_ARB
	, gl_DRAW_BUFFER9_ARB
	, gl_MAX_DRAW_BUFFERS_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_draw_buffers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_draw_buffers = extGL 97

glDrawBuffersARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLenum -> m ()
glDrawBuffersARB v0 v1 = funGL 251 >>= \f -> liftIO $ f v0 v1

gl_DRAW_BUFFER0_ARB :: GLenum
gl_DRAW_BUFFER0_ARB = 0x8825

gl_DRAW_BUFFER10_ARB :: GLenum
gl_DRAW_BUFFER10_ARB = 0x882F

gl_DRAW_BUFFER11_ARB :: GLenum
gl_DRAW_BUFFER11_ARB = 0x8830

gl_DRAW_BUFFER12_ARB :: GLenum
gl_DRAW_BUFFER12_ARB = 0x8831

gl_DRAW_BUFFER13_ARB :: GLenum
gl_DRAW_BUFFER13_ARB = 0x8832

gl_DRAW_BUFFER14_ARB :: GLenum
gl_DRAW_BUFFER14_ARB = 0x8833

gl_DRAW_BUFFER15_ARB :: GLenum
gl_DRAW_BUFFER15_ARB = 0x8834

gl_DRAW_BUFFER1_ARB :: GLenum
gl_DRAW_BUFFER1_ARB = 0x8826

gl_DRAW_BUFFER2_ARB :: GLenum
gl_DRAW_BUFFER2_ARB = 0x8827

gl_DRAW_BUFFER3_ARB :: GLenum
gl_DRAW_BUFFER3_ARB = 0x8828

gl_DRAW_BUFFER4_ARB :: GLenum
gl_DRAW_BUFFER4_ARB = 0x8829

gl_DRAW_BUFFER5_ARB :: GLenum
gl_DRAW_BUFFER5_ARB = 0x882A

gl_DRAW_BUFFER6_ARB :: GLenum
gl_DRAW_BUFFER6_ARB = 0x882B

gl_DRAW_BUFFER7_ARB :: GLenum
gl_DRAW_BUFFER7_ARB = 0x882C

gl_DRAW_BUFFER8_ARB :: GLenum
gl_DRAW_BUFFER8_ARB = 0x882D

gl_DRAW_BUFFER9_ARB :: GLenum
gl_DRAW_BUFFER9_ARB = 0x882E

gl_MAX_DRAW_BUFFERS_ARB :: GLenum
gl_MAX_DRAW_BUFFERS_ARB = 0x8824