-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.DepthBoundsTest (
	-- * Extension Support
	  gl_EXT_depth_bounds_test

	-- * GL_EXT_depth_bounds_test
	, glDepthBoundsEXT
	, gl_DEPTH_BOUNDS_EXT
	, gl_DEPTH_BOUNDS_TEST_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_depth_bounds_test :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_depth_bounds_test = extGL 268

glDepthBoundsEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLclampd -> GLclampd -> m ()
glDepthBoundsEXT v0 v1 = funGL 960 >>= \f -> liftIO $ f v0 v1

gl_DEPTH_BOUNDS_EXT :: GLenum
gl_DEPTH_BOUNDS_EXT = 0x8891

gl_DEPTH_BOUNDS_TEST_EXT :: GLenum
gl_DEPTH_BOUNDS_TEST_EXT = 0x8890