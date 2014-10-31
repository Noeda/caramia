-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.IndexFunc (
	-- * Extension Support
	  gl_EXT_index_func

	-- * GL_EXT_index_func
	, glIndexFuncEXT
	, gl_INDEX_TEST_EXT
	, gl_INDEX_TEST_FUNC_EXT
	, gl_INDEX_TEST_REF_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_index_func :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_index_func = extGL 291

glIndexFuncEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLclampf -> m ()
glIndexFuncEXT v0 v1 = funGL 1290 >>= \f -> liftIO $ f v0 v1

gl_INDEX_TEST_EXT :: GLenum
gl_INDEX_TEST_EXT = 0x81B5

gl_INDEX_TEST_FUNC_EXT :: GLenum
gl_INDEX_TEST_FUNC_EXT = 0x81B6

gl_INDEX_TEST_REF_EXT :: GLenum
gl_INDEX_TEST_REF_EXT = 0x81B7