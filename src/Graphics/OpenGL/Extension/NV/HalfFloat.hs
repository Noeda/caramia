-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.HalfFloat (
	-- * Extension Support
	  gl_NV_half_float

	-- * GL_NV_half_float
	, glColor3hNV
	, glColor3hvNV
	, glColor4hNV
	, glColor4hvNV
	, glFogCoordhNV
	, glFogCoordhvNV
	, glMultiTexCoord1hNV
	, glMultiTexCoord1hvNV
	, glMultiTexCoord2hNV
	, glMultiTexCoord2hvNV
	, glMultiTexCoord3hNV
	, glMultiTexCoord3hvNV
	, glMultiTexCoord4hNV
	, glMultiTexCoord4hvNV
	, glNormal3hNV
	, glNormal3hvNV
	, glSecondaryColor3hNV
	, glSecondaryColor3hvNV
	, glTexCoord1hNV
	, glTexCoord1hvNV
	, glTexCoord2hNV
	, glTexCoord2hvNV
	, glTexCoord3hNV
	, glTexCoord3hvNV
	, glTexCoord4hNV
	, glTexCoord4hvNV
	, glVertex2hNV
	, glVertex2hvNV
	, glVertex3hNV
	, glVertex3hvNV
	, glVertex4hNV
	, glVertex4hvNV
	, glVertexAttrib1hNV
	, glVertexAttrib1hvNV
	, glVertexAttrib2hNV
	, glVertexAttrib2hvNV
	, glVertexAttrib3hNV
	, glVertexAttrib3hvNV
	, glVertexAttrib4hNV
	, glVertexAttrib4hvNV
	, glVertexAttribs1hvNV
	, glVertexAttribs2hvNV
	, glVertexAttribs3hvNV
	, glVertexAttribs4hvNV
	, glVertexWeighthNV
	, glVertexWeighthvNV
	, gl_HALF_FLOAT_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_half_float :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_half_float = extGL 474

glColor3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glColor3hNV v0 v1 v2 = funGL 1646 >>= \f -> liftIO $ f v0 v1 v2

glColor3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glColor3hvNV v0 = funGL 1647 >>= \f -> liftIO $ f v0

glColor4hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glColor4hNV v0 v1 v2 v3 = funGL 1648 >>= \f -> liftIO $ f v0 v1 v2 v3

glColor4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glColor4hvNV v0 = funGL 1649 >>= \f -> liftIO $ f v0

glFogCoordhNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> m ()
glFogCoordhNV v0 = funGL 1650 >>= \f -> liftIO $ f v0

glFogCoordhvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glFogCoordhvNV v0 = funGL 1651 >>= \f -> liftIO $ f v0

glMultiTexCoord1hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLhalfNV -> m ()
glMultiTexCoord1hNV v0 v1 = funGL 1652 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLhalfNV -> m ()
glMultiTexCoord1hvNV v0 v1 = funGL 1653 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLhalfNV -> GLhalfNV -> m ()
glMultiTexCoord2hNV v0 v1 v2 = funGL 1654 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLhalfNV -> m ()
glMultiTexCoord2hvNV v0 v1 = funGL 1655 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glMultiTexCoord3hNV v0 v1 v2 v3 = funGL 1656 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLhalfNV -> m ()
glMultiTexCoord3hvNV v0 v1 = funGL 1657 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glMultiTexCoord4hNV v0 v1 v2 v3 v4 = funGL 1658 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLhalfNV -> m ()
glMultiTexCoord4hvNV v0 v1 = funGL 1659 >>= \f -> liftIO $ f v0 v1

glNormal3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glNormal3hNV v0 v1 v2 = funGL 1660 >>= \f -> liftIO $ f v0 v1 v2

glNormal3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glNormal3hvNV v0 = funGL 1661 >>= \f -> liftIO $ f v0

glSecondaryColor3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glSecondaryColor3hNV v0 v1 v2 = funGL 1662 >>= \f -> liftIO $ f v0 v1 v2

glSecondaryColor3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glSecondaryColor3hvNV v0 = funGL 1663 >>= \f -> liftIO $ f v0

glTexCoord1hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> m ()
glTexCoord1hNV v0 = funGL 1664 >>= \f -> liftIO $ f v0

glTexCoord1hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glTexCoord1hvNV v0 = funGL 1665 >>= \f -> liftIO $ f v0

glTexCoord2hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> m ()
glTexCoord2hNV v0 v1 = funGL 1666 >>= \f -> liftIO $ f v0 v1

glTexCoord2hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glTexCoord2hvNV v0 = funGL 1667 >>= \f -> liftIO $ f v0

glTexCoord3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glTexCoord3hNV v0 v1 v2 = funGL 1668 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glTexCoord3hvNV v0 = funGL 1669 >>= \f -> liftIO $ f v0

glTexCoord4hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glTexCoord4hNV v0 v1 v2 v3 = funGL 1670 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glTexCoord4hvNV v0 = funGL 1671 >>= \f -> liftIO $ f v0

glVertex2hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> m ()
glVertex2hNV v0 v1 = funGL 1672 >>= \f -> liftIO $ f v0 v1

glVertex2hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glVertex2hvNV v0 = funGL 1673 >>= \f -> liftIO $ f v0

glVertex3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glVertex3hNV v0 v1 v2 = funGL 1674 >>= \f -> liftIO $ f v0 v1 v2

glVertex3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glVertex3hvNV v0 = funGL 1675 >>= \f -> liftIO $ f v0

glVertex4hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glVertex4hNV v0 v1 v2 v3 = funGL 1676 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glVertex4hvNV v0 = funGL 1677 >>= \f -> liftIO $ f v0

glVertexAttrib1hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLhalfNV -> m ()
glVertexAttrib1hNV v0 v1 = funGL 1678 >>= \f -> liftIO $ f v0 v1

glVertexAttrib1hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLhalfNV -> m ()
glVertexAttrib1hvNV v0 v1 = funGL 1679 >>= \f -> liftIO $ f v0 v1

glVertexAttrib2hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLhalfNV -> GLhalfNV -> m ()
glVertexAttrib2hNV v0 v1 v2 = funGL 1680 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttrib2hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLhalfNV -> m ()
glVertexAttrib2hvNV v0 v1 = funGL 1681 >>= \f -> liftIO $ f v0 v1

glVertexAttrib3hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glVertexAttrib3hNV v0 v1 v2 v3 = funGL 1682 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexAttrib3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLhalfNV -> m ()
glVertexAttrib3hvNV v0 v1 = funGL 1683 >>= \f -> liftIO $ f v0 v1

glVertexAttrib4hNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLhalfNV -> GLhalfNV -> GLhalfNV -> GLhalfNV -> m ()
glVertexAttrib4hNV v0 v1 v2 v3 v4 = funGL 1684 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexAttrib4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> Ptr GLhalfNV -> m ()
glVertexAttrib4hvNV v0 v1 = funGL 1685 >>= \f -> liftIO $ f v0 v1

glVertexAttribs1hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLhalfNV -> m ()
glVertexAttribs1hvNV v0 v1 v2 = funGL 1686 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs2hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLhalfNV -> m ()
glVertexAttribs2hvNV v0 v1 v2 = funGL 1687 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs3hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLhalfNV -> m ()
glVertexAttribs3hvNV v0 v1 v2 = funGL 1688 >>= \f -> liftIO $ f v0 v1 v2

glVertexAttribs4hvNV :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLsizei -> Ptr GLhalfNV -> m ()
glVertexAttribs4hvNV v0 v1 v2 = funGL 1689 >>= \f -> liftIO $ f v0 v1 v2

glVertexWeighthNV :: (MonadIO m, MonadReader e m, HasScope e) => GLhalfNV -> m ()
glVertexWeighthNV v0 = funGL 1690 >>= \f -> liftIO $ f v0

glVertexWeighthvNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLhalfNV -> m ()
glVertexWeighthvNV v0 = funGL 1691 >>= \f -> liftIO $ f v0

gl_HALF_FLOAT_NV :: GLenum
gl_HALF_FLOAT_NV = 0x140B