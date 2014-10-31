-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureCubeMapArray (
	-- * Extension Support
	  gl_EXT_texture_cube_map_array

	-- * GL_EXT_texture_cube_map_array
	, gl_IMAGE_CUBE_MAP_ARRAY_EXT
	, gl_INT_IMAGE_CUBE_MAP_ARRAY_EXT
	, gl_INT_SAMPLER_CUBE_MAP_ARRAY_EXT
	, gl_SAMPLER_CUBE_MAP_ARRAY_EXT
	, gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT
	, gl_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT
	, gl_TEXTURE_CUBE_MAP_ARRAY_EXT
	, gl_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
	, gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_cube_map_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_cube_map_array = extGL 355

gl_INT_SAMPLER_CUBE_MAP_ARRAY_EXT :: GLenum
gl_INT_SAMPLER_CUBE_MAP_ARRAY_EXT = 0x900E

gl_SAMPLER_CUBE_MAP_ARRAY_EXT :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY_EXT = 0x900C

gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT :: GLenum
gl_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT = 0x900D

gl_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT :: GLenum
gl_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT = 0x900A

gl_TEXTURE_CUBE_MAP_ARRAY_EXT :: GLenum
gl_TEXTURE_CUBE_MAP_ARRAY_EXT = 0x9009

gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT :: GLenum
gl_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT = 0x900F