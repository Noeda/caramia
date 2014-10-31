-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.StencilTwoSide (
	-- * Extension Support
	  gl_EXT_stencil_two_side

	-- * GL_EXT_stencil_two_side
	, glActiveStencilFaceEXT
	, gl_ACTIVE_STENCIL_FACE_EXT
	, gl_STENCIL_TEST_TWO_SIDE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_stencil_two_side :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_stencil_two_side = extGL 339

glActiveStencilFaceEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glActiveStencilFaceEXT v0 = funGL 1360 >>= \f -> liftIO $ f v0

gl_ACTIVE_STENCIL_FACE_EXT :: GLenum
gl_ACTIVE_STENCIL_FACE_EXT = 0x8911

gl_STENCIL_TEST_TWO_SIDE_EXT :: GLenum
gl_STENCIL_TEST_TWO_SIDE_EXT = 0x8910