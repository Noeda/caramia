-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TextureArray (
	-- * Extension Support
	  gl_EXT_texture_array

	-- * GL_EXT_texture_array
	, glFramebufferTextureLayerEXT
	, gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
	, gl_MAX_ARRAY_TEXTURE_LAYERS_EXT
	, gl_PROXY_TEXTURE_1D_ARRAY_EXT
	, gl_PROXY_TEXTURE_2D_ARRAY_EXT
	, gl_TEXTURE_1D_ARRAY_EXT
	, gl_TEXTURE_2D_ARRAY_EXT
	, gl_TEXTURE_BINDING_1D_ARRAY_EXT
	, gl_TEXTURE_BINDING_2D_ARRAY_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_EXT_texture_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_array = extGL 346

gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT :: GLenum
gl_COMPARE_REF_DEPTH_TO_TEXTURE_EXT = 0x884E

gl_MAX_ARRAY_TEXTURE_LAYERS_EXT :: GLenum
gl_MAX_ARRAY_TEXTURE_LAYERS_EXT = 0x88FF

gl_PROXY_TEXTURE_1D_ARRAY_EXT :: GLenum
gl_PROXY_TEXTURE_1D_ARRAY_EXT = 0x8C19

gl_PROXY_TEXTURE_2D_ARRAY_EXT :: GLenum
gl_PROXY_TEXTURE_2D_ARRAY_EXT = 0x8C1B

gl_TEXTURE_1D_ARRAY_EXT :: GLenum
gl_TEXTURE_1D_ARRAY_EXT = 0x8C18

gl_TEXTURE_2D_ARRAY_EXT :: GLenum
gl_TEXTURE_2D_ARRAY_EXT = 0x8C1A

gl_TEXTURE_BINDING_1D_ARRAY_EXT :: GLenum
gl_TEXTURE_BINDING_1D_ARRAY_EXT = 0x8C1C

gl_TEXTURE_BINDING_2D_ARRAY_EXT :: GLenum
gl_TEXTURE_BINDING_2D_ARRAY_EXT = 0x8C1D