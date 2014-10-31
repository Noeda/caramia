-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.ShaderPixelLocalStorage (
	-- * Extension Support
	  gl_EXT_shader_pixel_local_storage

	-- * GL_EXT_shader_pixel_local_storage
	, gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT
	, gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT
	, gl_SHADER_PIXEL_LOCAL_STORAGE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_shader_pixel_local_storage :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_shader_pixel_local_storage = extGL 332

gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT :: GLenum
gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT = 0x8F63

gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT :: GLenum
gl_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT = 0x8F67

gl_SHADER_PIXEL_LOCAL_STORAGE_EXT :: GLenum
gl_SHADER_PIXEL_LOCAL_STORAGE_EXT = 0x8F64