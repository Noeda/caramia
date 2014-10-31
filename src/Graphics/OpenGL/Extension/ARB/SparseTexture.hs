-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.SparseTexture (
	-- * Extension Support
	  gl_ARB_sparse_texture

	-- * GL_ARB_sparse_texture
	, glTexPageCommitmentARB
	, gl_MAX_SPARSE_3D_TEXTURE_SIZE_ARB
	, gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB
	, gl_MAX_SPARSE_TEXTURE_SIZE_ARB
	, gl_NUM_SPARSE_LEVELS_ARB
	, gl_NUM_VIRTUAL_PAGE_SIZES_ARB
	, gl_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB
	, gl_TEXTURE_SPARSE_ARB
	, gl_VIRTUAL_PAGE_SIZE_INDEX_ARB
	, gl_VIRTUAL_PAGE_SIZE_X_ARB
	, gl_VIRTUAL_PAGE_SIZE_Y_ARB
	, gl_VIRTUAL_PAGE_SIZE_Z_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_sparse_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_sparse_texture = extGL 170

glTexPageCommitmentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLboolean -> m ()
glTexPageCommitmentARB v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 605 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

gl_MAX_SPARSE_3D_TEXTURE_SIZE_ARB :: GLenum
gl_MAX_SPARSE_3D_TEXTURE_SIZE_ARB = 0x9199

gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB :: GLenum
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB = 0x919A

gl_MAX_SPARSE_TEXTURE_SIZE_ARB :: GLenum
gl_MAX_SPARSE_TEXTURE_SIZE_ARB = 0x9198

gl_NUM_SPARSE_LEVELS_ARB :: GLenum
gl_NUM_SPARSE_LEVELS_ARB = 0x91AA

gl_NUM_VIRTUAL_PAGE_SIZES_ARB :: GLenum
gl_NUM_VIRTUAL_PAGE_SIZES_ARB = 0x91A8

gl_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB :: GLenum
gl_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB = 0x91A9

gl_TEXTURE_SPARSE_ARB :: GLenum
gl_TEXTURE_SPARSE_ARB = 0x91A6

gl_VIRTUAL_PAGE_SIZE_INDEX_ARB :: GLenum
gl_VIRTUAL_PAGE_SIZE_INDEX_ARB = 0x91A7

gl_VIRTUAL_PAGE_SIZE_X_ARB :: GLenum
gl_VIRTUAL_PAGE_SIZE_X_ARB = 0x9195

gl_VIRTUAL_PAGE_SIZE_Y_ARB :: GLenum
gl_VIRTUAL_PAGE_SIZE_Y_ARB = 0x9196

gl_VIRTUAL_PAGE_SIZE_Z_ARB :: GLenum
gl_VIRTUAL_PAGE_SIZE_Z_ARB = 0x9197