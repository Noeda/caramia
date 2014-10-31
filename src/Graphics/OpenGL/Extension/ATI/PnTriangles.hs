-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.PnTriangles (
	-- * Extension Support
	  gl_ATI_pn_triangles

	-- * GL_ATI_pn_triangles
	, glPNTrianglesfATI
	, glPNTrianglesiATI
	, gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
	, gl_PN_TRIANGLES_ATI
	, gl_PN_TRIANGLES_NORMAL_MODE_ATI
	, gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
	, gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
	, gl_PN_TRIANGLES_POINT_MODE_ATI
	, gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
	, gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
	, gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_pn_triangles :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_pn_triangles = extGL 235

glPNTrianglesfATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glPNTrianglesfATI v0 v1 = funGL 837 >>= \f -> liftIO $ f v0 v1

glPNTrianglesiATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glPNTrianglesiATI v0 v1 = funGL 838 >>= \f -> liftIO $ f v0 v1

gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI :: GLenum
gl_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1

gl_PN_TRIANGLES_ATI :: GLenum
gl_PN_TRIANGLES_ATI = 0x87F0

gl_PN_TRIANGLES_NORMAL_MODE_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_ATI = 0x87F3

gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7

gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI :: GLenum
gl_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8

gl_PN_TRIANGLES_POINT_MODE_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_ATI = 0x87F2

gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6

gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI :: GLenum
gl_PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5

gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI :: GLenum
gl_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4