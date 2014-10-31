-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.PolynomialFfd (
	-- * Extension Support
	  gl_SGIX_polynomial_ffd

	-- * GL_SGIX_polynomial_ffd
	, glDeformSGIX
	, glDeformationMap3dSGIX
	, glDeformationMap3fSGIX
	, glLoadIdentityDeformationMapSGIX
	, gl_DEFORMATIONS_MASK_SGIX
	, gl_GEOMETRY_DEFORMATION_BIT_SGIX
	, gl_GEOMETRY_DEFORMATION_SGIX
	, gl_MAX_DEFORMATION_ORDER_SGIX
	, gl_TEXTURE_DEFORMATION_BIT_SGIX
	, gl_TEXTURE_DEFORMATION_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_polynomial_ffd :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_polynomial_ffd = extGL 648

glDeformSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glDeformSGIX v0 = funGL 2269 >>= \f -> liftIO $ f v0

glDeformationMap3dSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> m ()
glDeformationMap3dSGIX v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = funGL 2270 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13

glDeformationMap3fSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> m ()
glDeformationMap3fSGIX v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = funGL 2271 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13

glLoadIdentityDeformationMapSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLbitfield -> m ()
glLoadIdentityDeformationMapSGIX v0 = funGL 2272 >>= \f -> liftIO $ f v0

gl_DEFORMATIONS_MASK_SGIX :: GLenum
gl_DEFORMATIONS_MASK_SGIX = 0x8196

gl_GEOMETRY_DEFORMATION_BIT_SGIX :: GLenum
gl_GEOMETRY_DEFORMATION_BIT_SGIX = 0x00000002

gl_GEOMETRY_DEFORMATION_SGIX :: GLenum
gl_GEOMETRY_DEFORMATION_SGIX = 0x8194

gl_MAX_DEFORMATION_ORDER_SGIX :: GLenum
gl_MAX_DEFORMATION_ORDER_SGIX = 0x8197

gl_TEXTURE_DEFORMATION_BIT_SGIX :: GLenum
gl_TEXTURE_DEFORMATION_BIT_SGIX = 0x00000001

gl_TEXTURE_DEFORMATION_SGIX :: GLenum
gl_TEXTURE_DEFORMATION_SGIX = 0x8195