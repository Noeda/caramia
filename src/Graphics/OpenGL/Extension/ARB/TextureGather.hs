-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.TextureGather (
	-- * Extension Support
	  gl_ARB_texture_gather

	-- * GL_ARB_texture_gather
	, gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB
	, gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
	, gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_texture_gather :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_texture_gather = extGL 189

gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB = 0x8F9F

gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB :: GLenum
gl_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5F

gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB :: GLenum
gl_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB = 0x8E5E