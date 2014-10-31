-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.SeparateStencil (
	-- * Extension Support
	  gl_ATI_separate_stencil

	-- * GL_ATI_separate_stencil
	, glStencilFuncSeparateATI
	, glStencilOpSeparateATI
	, gl_STENCIL_BACK_FAIL_ATI
	, gl_STENCIL_BACK_FUNC_ATI
	, gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
	, gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_separate_stencil :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_separate_stencil = extGL 236

glStencilFuncSeparateATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> GLuint -> m ()
glStencilFuncSeparateATI v0 v1 v2 v3 = funGL 839 >>= \f -> liftIO $ f v0 v1 v2 v3

glStencilOpSeparateATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLenum -> m ()
glStencilOpSeparateATI v0 v1 v2 v3 = funGL 840 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_STENCIL_BACK_FAIL_ATI :: GLenum
gl_STENCIL_BACK_FAIL_ATI = 0x8801

gl_STENCIL_BACK_FUNC_ATI :: GLenum
gl_STENCIL_BACK_FUNC_ATI = 0x8800

gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802

gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI :: GLenum
gl_STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803