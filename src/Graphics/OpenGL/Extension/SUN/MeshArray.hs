-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.MeshArray (
	-- * Extension Support
	  gl_SUN_mesh_array

	-- * GL_SUN_mesh_array
	, glDrawMeshArraysSUN
	, gl_QUAD_MESH_SUN
	, gl_TRIANGLE_MESH_SUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_mesh_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_mesh_array = extGL 672

glDrawMeshArraysSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> GLsizei -> m ()
glDrawMeshArraysSUN v0 v1 v2 v3 = funGL 2287 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_QUAD_MESH_SUN :: GLenum
gl_QUAD_MESH_SUN = 0x8614

gl_TRIANGLE_MESH_SUN :: GLenum
gl_TRIANGLE_MESH_SUN = 0x8615