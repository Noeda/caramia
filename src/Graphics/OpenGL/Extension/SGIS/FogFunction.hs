-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.FogFunction (
	-- * Extension Support
	  gl_SGIS_fog_function

	-- * GL_SGIS_fog_function
	, glFogFuncSGIS
	, glGetFogFuncSGIS
	, gl_FOG_FUNC_POINTS_SGIS
	, gl_FOG_FUNC_SGIS
	, gl_MAX_FOG_FUNC_POINTS_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_fog_function :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_fog_function = extGL 614

glFogFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLfloat -> m ()
glFogFuncSGIS v0 v1 = funGL 2210 >>= \f -> liftIO $ f v0 v1

glGetFogFuncSGIS :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glGetFogFuncSGIS v0 = funGL 2211 >>= \f -> liftIO $ f v0

gl_FOG_FUNC_POINTS_SGIS :: GLenum
gl_FOG_FUNC_POINTS_SGIS = 0x812B

gl_FOG_FUNC_SGIS :: GLenum
gl_FOG_FUNC_SGIS = 0x812A

gl_MAX_FOG_FUNC_POINTS_SGIS :: GLenum
gl_MAX_FOG_FUNC_POINTS_SGIS = 0x812C