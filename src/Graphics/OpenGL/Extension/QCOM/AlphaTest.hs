-- This file was automatically generated.
module Graphics.OpenGL.Extension.QCOM.AlphaTest (
	-- * Extension Support
	  gl_QCOM_alpha_test

	-- * GL_QCOM_alpha_test
	, glAlphaFuncQCOM
	, gl_ALPHA_TEST_FUNC_QCOM
	, gl_ALPHA_TEST_QCOM
	, gl_ALPHA_TEST_REF_QCOM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_QCOM_alpha_test :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_QCOM_alpha_test = extGL 603

glAlphaFuncQCOM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLclampf -> m ()
glAlphaFuncQCOM v0 v1 = funGL 2182 >>= \f -> liftIO $ f v0 v1

gl_ALPHA_TEST_FUNC_QCOM :: GLenum
gl_ALPHA_TEST_FUNC_QCOM = 0x0BC1

gl_ALPHA_TEST_QCOM :: GLenum
gl_ALPHA_TEST_QCOM = 0x0BC0

gl_ALPHA_TEST_REF_QCOM :: GLenum
gl_ALPHA_TEST_REF_QCOM = 0x0BC2