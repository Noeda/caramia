-- This file was automatically generated.
module Graphics.OpenGL.Extension.HP.OcclusionTest (
	-- * Extension Support
	  gl_HP_occlusion_test

	-- * GL_HP_occlusion_test
	, gl_OCCLUSION_TEST_HP
	, gl_OCCLUSION_TEST_RESULT_HP
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_HP_occlusion_test :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_HP_occlusion_test = extGL 390

gl_OCCLUSION_TEST_HP :: GLenum
gl_OCCLUSION_TEST_HP = 0x8165

gl_OCCLUSION_TEST_RESULT_HP :: GLenum
gl_OCCLUSION_TEST_RESULT_HP = 0x8166