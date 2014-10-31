-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureSharedExponent (
	-- * Extension Support
	  gl_EXT_texture_shared_exponent

	-- * GL_EXT_texture_shared_exponent
	, gl_RGB9_E5_EXT
	, gl_TEXTURE_SHARED_SIZE_EXT
	, gl_UNSIGNED_INT_5_9_9_9_REV_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_shared_exponent :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_shared_exponent = extGL 370

gl_RGB9_E5_EXT :: GLenum
gl_RGB9_E5_EXT = 0x8C3D

gl_TEXTURE_SHARED_SIZE_EXT :: GLenum
gl_TEXTURE_SHARED_SIZE_EXT = 0x8C3F

gl_UNSIGNED_INT_5_9_9_9_REV_EXT :: GLenum
gl_UNSIGNED_INT_5_9_9_9_REV_EXT = 0x8C3E