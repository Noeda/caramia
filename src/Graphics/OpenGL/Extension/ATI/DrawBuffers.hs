-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.DrawBuffers (
	-- * Extension Support
	  gl_ATI_draw_buffers

	-- * GL_ATI_draw_buffers
	, glDrawBuffersATI
	, gl_DRAW_BUFFER0_ATI
	, gl_DRAW_BUFFER10_ATI
	, gl_DRAW_BUFFER11_ATI
	, gl_DRAW_BUFFER12_ATI
	, gl_DRAW_BUFFER13_ATI
	, gl_DRAW_BUFFER14_ATI
	, gl_DRAW_BUFFER15_ATI
	, gl_DRAW_BUFFER1_ATI
	, gl_DRAW_BUFFER2_ATI
	, gl_DRAW_BUFFER3_ATI
	, gl_DRAW_BUFFER4_ATI
	, gl_DRAW_BUFFER5_ATI
	, gl_DRAW_BUFFER6_ATI
	, gl_DRAW_BUFFER7_ATI
	, gl_DRAW_BUFFER8_ATI
	, gl_DRAW_BUFFER9_ATI
	, gl_MAX_DRAW_BUFFERS_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_draw_buffers :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_draw_buffers = extGL 228

glDrawBuffersATI :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLenum -> m ()
glDrawBuffersATI v0 v1 = funGL 813 >>= \f -> liftIO $ f v0 v1

gl_DRAW_BUFFER0_ATI :: GLenum
gl_DRAW_BUFFER0_ATI = 0x8825

gl_DRAW_BUFFER10_ATI :: GLenum
gl_DRAW_BUFFER10_ATI = 0x882F

gl_DRAW_BUFFER11_ATI :: GLenum
gl_DRAW_BUFFER11_ATI = 0x8830

gl_DRAW_BUFFER12_ATI :: GLenum
gl_DRAW_BUFFER12_ATI = 0x8831

gl_DRAW_BUFFER13_ATI :: GLenum
gl_DRAW_BUFFER13_ATI = 0x8832

gl_DRAW_BUFFER14_ATI :: GLenum
gl_DRAW_BUFFER14_ATI = 0x8833

gl_DRAW_BUFFER15_ATI :: GLenum
gl_DRAW_BUFFER15_ATI = 0x8834

gl_DRAW_BUFFER1_ATI :: GLenum
gl_DRAW_BUFFER1_ATI = 0x8826

gl_DRAW_BUFFER2_ATI :: GLenum
gl_DRAW_BUFFER2_ATI = 0x8827

gl_DRAW_BUFFER3_ATI :: GLenum
gl_DRAW_BUFFER3_ATI = 0x8828

gl_DRAW_BUFFER4_ATI :: GLenum
gl_DRAW_BUFFER4_ATI = 0x8829

gl_DRAW_BUFFER5_ATI :: GLenum
gl_DRAW_BUFFER5_ATI = 0x882A

gl_DRAW_BUFFER6_ATI :: GLenum
gl_DRAW_BUFFER6_ATI = 0x882B

gl_DRAW_BUFFER7_ATI :: GLenum
gl_DRAW_BUFFER7_ATI = 0x882C

gl_DRAW_BUFFER8_ATI :: GLenum
gl_DRAW_BUFFER8_ATI = 0x882D

gl_DRAW_BUFFER9_ATI :: GLenum
gl_DRAW_BUFFER9_ATI = 0x882E

gl_MAX_DRAW_BUFFERS_ATI :: GLenum
gl_MAX_DRAW_BUFFERS_ATI = 0x8824