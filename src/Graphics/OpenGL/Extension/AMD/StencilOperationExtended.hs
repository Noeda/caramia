-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.StencilOperationExtended (
	-- * Extension Support
	  gl_AMD_stencil_operation_extended

	-- * GL_AMD_stencil_operation_extended
	, glStencilOpValueAMD
	, gl_REPLACE_VALUE_AMD
	, gl_SET_AMD
	, gl_STENCIL_BACK_OP_VALUE_AMD
	, gl_STENCIL_OP_VALUE_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_stencil_operation_extended :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_stencil_operation_extended = extGL 26

glStencilOpValueAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m ()
glStencilOpValueAMD v0 v1 = funGL 63 >>= \f -> liftIO $ f v0 v1

gl_REPLACE_VALUE_AMD :: GLenum
gl_REPLACE_VALUE_AMD = 0x874B

gl_SET_AMD :: GLenum
gl_SET_AMD = 0x874A

gl_STENCIL_BACK_OP_VALUE_AMD :: GLenum
gl_STENCIL_BACK_OP_VALUE_AMD = 0x874D

gl_STENCIL_OP_VALUE_AMD :: GLenum
gl_STENCIL_OP_VALUE_AMD = 0x874C