-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VertexBufferUnifiedMemory (
	-- * Extension Support
	  gl_NV_vertex_buffer_unified_memory

	-- * GL_NV_vertex_buffer_unified_memory
	, glBufferAddressRangeNV
	, glColorFormatNV
	, glEdgeFlagFormatNV
	, glFogCoordFormatNV
	, glGetIntegerui64i_vNV
	, glIndexFormatNV
	, glNormalFormatNV
	, glSecondaryColorFormatNV
	, glTexCoordFormatNV
	, glVertexAttribFormatNV
	, glVertexAttribIFormatNV
	, glVertexFormatNV
	, gl_COLOR_ARRAY_ADDRESS_NV
	, gl_COLOR_ARRAY_LENGTH_NV
	, gl_DRAW_INDIRECT_ADDRESS_NV
	, gl_DRAW_INDIRECT_LENGTH_NV
	, gl_DRAW_INDIRECT_UNIFIED_NV
	, gl_EDGE_FLAG_ARRAY_ADDRESS_NV
	, gl_EDGE_FLAG_ARRAY_LENGTH_NV
	, gl_ELEMENT_ARRAY_ADDRESS_NV
	, gl_ELEMENT_ARRAY_LENGTH_NV
	, gl_ELEMENT_ARRAY_UNIFIED_NV
	, gl_FOG_COORD_ARRAY_ADDRESS_NV
	, gl_FOG_COORD_ARRAY_LENGTH_NV
	, gl_INDEX_ARRAY_ADDRESS_NV
	, gl_INDEX_ARRAY_LENGTH_NV
	, gl_NORMAL_ARRAY_ADDRESS_NV
	, gl_NORMAL_ARRAY_LENGTH_NV
	, gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV
	, gl_SECONDARY_COLOR_ARRAY_LENGTH_NV
	, gl_TEXTURE_COORD_ARRAY_ADDRESS_NV
	, gl_TEXTURE_COORD_ARRAY_LENGTH_NV
	, gl_VERTEX_ARRAY_ADDRESS_NV
	, gl_VERTEX_ARRAY_LENGTH_NV
	, gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
	, gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV
	, gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vertex_buffer_unified_memory :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vertex_buffer_unified_memory = extGL 534

glBufferAddressRangeNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLuint64EXT -> GLsizeiptr -> m ()
glBufferAddressRangeNV v0 v1 v2 v3 = funGL 1875 >>= \f -> liftIO $ f v0 v1 v2 v3

glColorFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> m ()
glColorFormatNV v0 v1 v2 = funGL 1876 >>= \f -> liftIO $ f v0 v1 v2

glEdgeFlagFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> m ()
glEdgeFlagFormatNV v0 = funGL 1877 >>= \f -> liftIO $ f v0

glFogCoordFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> m ()
glFogCoordFormatNV v0 v1 = funGL 1878 >>= \f -> liftIO $ f v0 v1

glGetIntegerui64i_vNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint64EXT -> m ()
glGetIntegerui64i_vNV v0 v1 v2 = funGL 1879 >>= \f -> liftIO $ f v0 v1 v2

glIndexFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> m ()
glIndexFormatNV v0 v1 = funGL 1880 >>= \f -> liftIO $ f v0 v1

glNormalFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> m ()
glNormalFormatNV v0 v1 = funGL 1881 >>= \f -> liftIO $ f v0 v1

glSecondaryColorFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> m ()
glSecondaryColorFormatNV v0 v1 v2 = funGL 1882 >>= \f -> liftIO $ f v0 v1 v2

glTexCoordFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> m ()
glTexCoordFormatNV v0 v1 v2 = funGL 1883 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLboolean -> GLsizei -> m ()
glVertexAttribFormatNV v0 v1 v2 v3 v4 = funGL 1884 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttribIFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLenum -> GLsizei -> m ()
glVertexAttribIFormatNV v0 v1 v2 v3 = funGL 1885 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexFormatNV :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLenum -> GLsizei -> m ()
glVertexFormatNV v0 v1 v2 = funGL 1886 >>= \f -> liftIO $ f v0 v1 v2

gl_COLOR_ARRAY_ADDRESS_NV :: GLenum
gl_COLOR_ARRAY_ADDRESS_NV = 0x8F23

gl_COLOR_ARRAY_LENGTH_NV :: GLenum
gl_COLOR_ARRAY_LENGTH_NV = 0x8F2D

gl_DRAW_INDIRECT_ADDRESS_NV :: GLenum
gl_DRAW_INDIRECT_ADDRESS_NV = 0x8F41

gl_DRAW_INDIRECT_LENGTH_NV :: GLenum
gl_DRAW_INDIRECT_LENGTH_NV = 0x8F42

gl_DRAW_INDIRECT_UNIFIED_NV :: GLenum
gl_DRAW_INDIRECT_UNIFIED_NV = 0x8F40

gl_EDGE_FLAG_ARRAY_ADDRESS_NV :: GLenum
gl_EDGE_FLAG_ARRAY_ADDRESS_NV = 0x8F26

gl_EDGE_FLAG_ARRAY_LENGTH_NV :: GLenum
gl_EDGE_FLAG_ARRAY_LENGTH_NV = 0x8F30

gl_ELEMENT_ARRAY_ADDRESS_NV :: GLenum
gl_ELEMENT_ARRAY_ADDRESS_NV = 0x8F29

gl_ELEMENT_ARRAY_LENGTH_NV :: GLenum
gl_ELEMENT_ARRAY_LENGTH_NV = 0x8F33

gl_ELEMENT_ARRAY_UNIFIED_NV :: GLenum
gl_ELEMENT_ARRAY_UNIFIED_NV = 0x8F1F

gl_FOG_COORD_ARRAY_ADDRESS_NV :: GLenum
gl_FOG_COORD_ARRAY_ADDRESS_NV = 0x8F28

gl_FOG_COORD_ARRAY_LENGTH_NV :: GLenum
gl_FOG_COORD_ARRAY_LENGTH_NV = 0x8F32

gl_INDEX_ARRAY_ADDRESS_NV :: GLenum
gl_INDEX_ARRAY_ADDRESS_NV = 0x8F24

gl_INDEX_ARRAY_LENGTH_NV :: GLenum
gl_INDEX_ARRAY_LENGTH_NV = 0x8F2E

gl_NORMAL_ARRAY_ADDRESS_NV :: GLenum
gl_NORMAL_ARRAY_ADDRESS_NV = 0x8F22

gl_NORMAL_ARRAY_LENGTH_NV :: GLenum
gl_NORMAL_ARRAY_LENGTH_NV = 0x8F2C

gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV :: GLenum
gl_SECONDARY_COLOR_ARRAY_ADDRESS_NV = 0x8F27

gl_SECONDARY_COLOR_ARRAY_LENGTH_NV :: GLenum
gl_SECONDARY_COLOR_ARRAY_LENGTH_NV = 0x8F31

gl_TEXTURE_COORD_ARRAY_ADDRESS_NV :: GLenum
gl_TEXTURE_COORD_ARRAY_ADDRESS_NV = 0x8F25

gl_TEXTURE_COORD_ARRAY_LENGTH_NV :: GLenum
gl_TEXTURE_COORD_ARRAY_LENGTH_NV = 0x8F2F

gl_VERTEX_ARRAY_ADDRESS_NV :: GLenum
gl_VERTEX_ARRAY_ADDRESS_NV = 0x8F21

gl_VERTEX_ARRAY_LENGTH_NV :: GLenum
gl_VERTEX_ARRAY_LENGTH_NV = 0x8F2B

gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_ADDRESS_NV = 0x8F20

gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_LENGTH_NV = 0x8F2A

gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV :: GLenum
gl_VERTEX_ATTRIB_ARRAY_UNIFIED_NV = 0x8F1E