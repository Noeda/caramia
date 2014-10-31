-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureSwizzle (
	-- * Extension Support
	  gl_EXT_texture_swizzle

	-- * GL_EXT_texture_swizzle
	, gl_TEXTURE_SWIZZLE_A_EXT
	, gl_TEXTURE_SWIZZLE_B_EXT
	, gl_TEXTURE_SWIZZLE_G_EXT
	, gl_TEXTURE_SWIZZLE_RGBA_EXT
	, gl_TEXTURE_SWIZZLE_R_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_swizzle :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_swizzle = extGL 373

gl_TEXTURE_SWIZZLE_A_EXT :: GLenum
gl_TEXTURE_SWIZZLE_A_EXT = 0x8E45

gl_TEXTURE_SWIZZLE_B_EXT :: GLenum
gl_TEXTURE_SWIZZLE_B_EXT = 0x8E44

gl_TEXTURE_SWIZZLE_G_EXT :: GLenum
gl_TEXTURE_SWIZZLE_G_EXT = 0x8E43

gl_TEXTURE_SWIZZLE_RGBA_EXT :: GLenum
gl_TEXTURE_SWIZZLE_RGBA_EXT = 0x8E46

gl_TEXTURE_SWIZZLE_R_EXT :: GLenum
gl_TEXTURE_SWIZZLE_R_EXT = 0x8E42