-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.SparseBuffer (
	-- * Extension Support
	  gl_ARB_sparse_buffer

	-- * GL_ARB_sparse_buffer
	, glBufferPageCommitmentARB
	, glNamedBufferPageCommitmentARB
	, glNamedBufferPageCommitmentEXT
	, gl_SPARSE_BUFFER_PAGE_SIZE_ARB
	, gl_SPARSE_STORAGE_BIT_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ARB_sparse_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_sparse_buffer = extGL 169

glBufferPageCommitmentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLintptr -> GLsizeiptr -> GLboolean -> m ()
glBufferPageCommitmentARB v0 v1 v2 v3 = funGL 602 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferPageCommitmentARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> m ()
glNamedBufferPageCommitmentARB v0 v1 v2 v3 = funGL 603 >>= \f -> liftIO $ f v0 v1 v2 v3

glNamedBufferPageCommitmentEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLintptr -> GLsizeiptr -> GLboolean -> m ()
glNamedBufferPageCommitmentEXT v0 v1 v2 v3 = funGL 604 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_SPARSE_BUFFER_PAGE_SIZE_ARB :: GLenum
gl_SPARSE_BUFFER_PAGE_SIZE_ARB = 0x82F8

gl_SPARSE_STORAGE_BIT_ARB :: GLenum
gl_SPARSE_STORAGE_BIT_ARB = 0x0400