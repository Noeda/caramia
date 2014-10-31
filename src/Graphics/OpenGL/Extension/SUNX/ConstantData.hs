-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUNX.ConstantData (
	-- * Extension Support
	  gl_SUNX_constant_data

	-- * GL_SUNX_constant_data
	, glFinishTextureSUNX
	, gl_TEXTURE_CONSTANT_DATA_SUNX
	, gl_UNPACK_CONSTANT_DATA_SUNX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUNX_constant_data :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUNX_constant_data = extGL 669

glFinishTextureSUNX :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glFinishTextureSUNX = funGL 2335 >>= \f -> liftIO $ f

gl_TEXTURE_CONSTANT_DATA_SUNX :: GLenum
gl_TEXTURE_CONSTANT_DATA_SUNX = 0x81D6

gl_UNPACK_CONSTANT_DATA_SUNX :: GLenum
gl_UNPACK_CONSTANT_DATA_SUNX = 0x81D5