-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.GeometryProgram4 (
	-- * Extension Support
	  gl_NV_geometry_program4

	-- * GL_NV_geometry_program4
	, glFramebufferTextureEXT
	, glFramebufferTextureFaceEXT
	, glFramebufferTextureLayerEXT
	, glProgramVertexLimitNV
	, gl_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
	, gl_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
	, gl_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
	, gl_GEOMETRY_INPUT_TYPE_EXT
	, gl_GEOMETRY_OUTPUT_TYPE_EXT
	, gl_GEOMETRY_PROGRAM_NV
	, gl_GEOMETRY_VERTICES_OUT_EXT
	, gl_LINES_ADJACENCY_EXT
	, gl_LINE_STRIP_ADJACENCY_EXT
	, gl_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
	, gl_MAX_PROGRAM_OUTPUT_VERTICES_NV
	, gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV
	, gl_PROGRAM_POINT_SIZE_EXT
	, gl_TRIANGLES_ADJACENCY_EXT
	, gl_TRIANGLE_STRIP_ADJACENCY_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_geometry_program4 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_geometry_program4 = extGL 467

glFramebufferTextureFaceEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLuint -> GLint -> GLenum -> m ()
glFramebufferTextureFaceEXT v0 v1 v2 v3 v4 = funGL 1626 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glProgramVertexLimitNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glProgramVertexLimitNV v0 v1 = funGL 1627 >>= \f -> liftIO $ f v0 v1

gl_GEOMETRY_PROGRAM_NV :: GLenum
gl_GEOMETRY_PROGRAM_NV = 0x8C26

gl_MAX_PROGRAM_OUTPUT_VERTICES_NV :: GLenum
gl_MAX_PROGRAM_OUTPUT_VERTICES_NV = 0x8C27

gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV :: GLenum
gl_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV = 0x8C28