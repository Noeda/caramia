-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.SparseTexture (
	-- * Extension Support
	  gl_AMD_sparse_texture

	-- * GL_AMD_sparse_texture
	, glTexStorageSparseAMD
	, glTextureStorageSparseAMD
	, gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD
	, gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS
	, gl_MAX_SPARSE_TEXTURE_SIZE_AMD
	, gl_MIN_LOD_WARNING_AMD
	, gl_MIN_SPARSE_LEVEL_AMD
	, gl_TEXTURE_STORAGE_SPARSE_BIT_AMD
	, gl_VIRTUAL_PAGE_SIZE_X_AMD
	, gl_VIRTUAL_PAGE_SIZE_Y_AMD
	, gl_VIRTUAL_PAGE_SIZE_Z_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_sparse_texture :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_sparse_texture = extGL 25

glTexStorageSparseAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> m ()
glTexStorageSparseAMD v0 v1 v2 v3 v4 v5 v6 = funGL 61 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glTextureStorageSparseAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> GLenum -> GLsizei -> GLsizei -> GLsizei -> GLsizei -> GLbitfield -> m ()
glTextureStorageSparseAMD v0 v1 v2 v3 v4 v5 v6 v7 = funGL 62 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD :: GLenum
gl_MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 0x9199

gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS :: GLenum
gl_MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 0x919A

gl_MAX_SPARSE_TEXTURE_SIZE_AMD :: GLenum
gl_MAX_SPARSE_TEXTURE_SIZE_AMD = 0x9198

gl_MIN_LOD_WARNING_AMD :: GLenum
gl_MIN_LOD_WARNING_AMD = 0x919C

gl_MIN_SPARSE_LEVEL_AMD :: GLenum
gl_MIN_SPARSE_LEVEL_AMD = 0x919B

gl_TEXTURE_STORAGE_SPARSE_BIT_AMD :: GLenum
gl_TEXTURE_STORAGE_SPARSE_BIT_AMD = 0x00000001

gl_VIRTUAL_PAGE_SIZE_X_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_X_AMD = 0x9195

gl_VIRTUAL_PAGE_SIZE_Y_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_Y_AMD = 0x9196

gl_VIRTUAL_PAGE_SIZE_Z_AMD :: GLenum
gl_VIRTUAL_PAGE_SIZE_Z_AMD = 0x9197