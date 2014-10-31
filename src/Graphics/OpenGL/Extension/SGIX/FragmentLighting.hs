-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.FragmentLighting (
	-- * Extension Support
	  gl_SGIX_fragment_lighting

	-- * GL_SGIX_fragment_lighting
	, glFragmentColorMaterialSGIX
	, glFragmentLightModelfSGIX
	, glFragmentLightModelfvSGIX
	, glFragmentLightModeliSGIX
	, glFragmentLightModelivSGIX
	, glFragmentLightfSGIX
	, glFragmentLightfvSGIX
	, glFragmentLightiSGIX
	, glFragmentLightivSGIX
	, glFragmentMaterialfSGIX
	, glFragmentMaterialfvSGIX
	, glFragmentMaterialiSGIX
	, glFragmentMaterialivSGIX
	, glGetFragmentLightfvSGIX
	, glGetFragmentLightivSGIX
	, glGetFragmentMaterialfvSGIX
	, glGetFragmentMaterialivSGIX
	, glLightEnviSGIX
	, gl_CURRENT_RASTER_NORMAL_SGIX
	, gl_FRAGMENT_COLOR_MATERIAL_FACE_SGIX
	, gl_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX
	, gl_FRAGMENT_COLOR_MATERIAL_SGIX
	, gl_FRAGMENT_LIGHT0_SGIX
	, gl_FRAGMENT_LIGHT1_SGIX
	, gl_FRAGMENT_LIGHT2_SGIX
	, gl_FRAGMENT_LIGHT3_SGIX
	, gl_FRAGMENT_LIGHT4_SGIX
	, gl_FRAGMENT_LIGHT5_SGIX
	, gl_FRAGMENT_LIGHT6_SGIX
	, gl_FRAGMENT_LIGHT7_SGIX
	, gl_FRAGMENT_LIGHTING_SGIX
	, gl_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX
	, gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX
	, gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX
	, gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX
	, gl_LIGHT_ENV_MODE_SGIX
	, gl_MAX_ACTIVE_LIGHTS_SGIX
	, gl_MAX_FRAGMENT_LIGHTS_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_fragment_lighting :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_fragment_lighting = extGL 639

glFragmentColorMaterialSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> m ()
glFragmentColorMaterialSGIX v0 v1 = funGL 2236 >>= \f -> liftIO $ f v0 v1

glFragmentLightModelfSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glFragmentLightModelfSGIX v0 v1 = funGL 2237 >>= \f -> liftIO $ f v0 v1

glFragmentLightModelfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glFragmentLightModelfvSGIX v0 v1 = funGL 2238 >>= \f -> liftIO $ f v0 v1

glFragmentLightModeliSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glFragmentLightModeliSGIX v0 v1 = funGL 2239 >>= \f -> liftIO $ f v0 v1

glFragmentLightModelivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glFragmentLightModelivSGIX v0 v1 = funGL 2240 >>= \f -> liftIO $ f v0 v1

glFragmentLightfSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glFragmentLightfSGIX v0 v1 v2 = funGL 2241 >>= \f -> liftIO $ f v0 v1 v2

glFragmentLightfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glFragmentLightfvSGIX v0 v1 v2 = funGL 2242 >>= \f -> liftIO $ f v0 v1 v2

glFragmentLightiSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glFragmentLightiSGIX v0 v1 v2 = funGL 2243 >>= \f -> liftIO $ f v0 v1 v2

glFragmentLightivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glFragmentLightivSGIX v0 v1 v2 = funGL 2244 >>= \f -> liftIO $ f v0 v1 v2

glFragmentMaterialfSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLfloat -> m ()
glFragmentMaterialfSGIX v0 v1 v2 = funGL 2245 >>= \f -> liftIO $ f v0 v1 v2

glFragmentMaterialfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glFragmentMaterialfvSGIX v0 v1 v2 = funGL 2246 >>= \f -> liftIO $ f v0 v1 v2

glFragmentMaterialiSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLint -> m ()
glFragmentMaterialiSGIX v0 v1 v2 = funGL 2247 >>= \f -> liftIO $ f v0 v1 v2

glFragmentMaterialivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glFragmentMaterialivSGIX v0 v1 v2 = funGL 2248 >>= \f -> liftIO $ f v0 v1 v2

glGetFragmentLightfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetFragmentLightfvSGIX v0 v1 v2 = funGL 2249 >>= \f -> liftIO $ f v0 v1 v2

glGetFragmentLightivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetFragmentLightivSGIX v0 v1 v2 = funGL 2250 >>= \f -> liftIO $ f v0 v1 v2

glGetFragmentMaterialfvSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLfloat -> m ()
glGetFragmentMaterialfvSGIX v0 v1 v2 = funGL 2251 >>= \f -> liftIO $ f v0 v1 v2

glGetFragmentMaterialivSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> Ptr GLint -> m ()
glGetFragmentMaterialivSGIX v0 v1 v2 = funGL 2252 >>= \f -> liftIO $ f v0 v1 v2

glLightEnviSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glLightEnviSGIX v0 v1 = funGL 2253 >>= \f -> liftIO $ f v0 v1

gl_CURRENT_RASTER_NORMAL_SGIX :: GLenum
gl_CURRENT_RASTER_NORMAL_SGIX = 0x8406

gl_FRAGMENT_COLOR_MATERIAL_FACE_SGIX :: GLenum
gl_FRAGMENT_COLOR_MATERIAL_FACE_SGIX = 0x8402

gl_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX :: GLenum
gl_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX = 0x8403

gl_FRAGMENT_COLOR_MATERIAL_SGIX :: GLenum
gl_FRAGMENT_COLOR_MATERIAL_SGIX = 0x8401

gl_FRAGMENT_LIGHT0_SGIX :: GLenum
gl_FRAGMENT_LIGHT0_SGIX = 0x840C

gl_FRAGMENT_LIGHT1_SGIX :: GLenum
gl_FRAGMENT_LIGHT1_SGIX = 0x840D

gl_FRAGMENT_LIGHT2_SGIX :: GLenum
gl_FRAGMENT_LIGHT2_SGIX = 0x840E

gl_FRAGMENT_LIGHT3_SGIX :: GLenum
gl_FRAGMENT_LIGHT3_SGIX = 0x840F

gl_FRAGMENT_LIGHT4_SGIX :: GLenum
gl_FRAGMENT_LIGHT4_SGIX = 0x8410

gl_FRAGMENT_LIGHT5_SGIX :: GLenum
gl_FRAGMENT_LIGHT5_SGIX = 0x8411

gl_FRAGMENT_LIGHT6_SGIX :: GLenum
gl_FRAGMENT_LIGHT6_SGIX = 0x8412

gl_FRAGMENT_LIGHT7_SGIX :: GLenum
gl_FRAGMENT_LIGHT7_SGIX = 0x8413

gl_FRAGMENT_LIGHTING_SGIX :: GLenum
gl_FRAGMENT_LIGHTING_SGIX = 0x8400

gl_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX :: GLenum
gl_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX = 0x840A

gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX :: GLenum
gl_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX = 0x8408

gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX :: GLenum
gl_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX = 0x840B

gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX :: GLenum
gl_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX = 0x8409

gl_LIGHT_ENV_MODE_SGIX :: GLenum
gl_LIGHT_ENV_MODE_SGIX = 0x8407

gl_MAX_ACTIVE_LIGHTS_SGIX :: GLenum
gl_MAX_ACTIVE_LIGHTS_SGIX = 0x8405

gl_MAX_FRAGMENT_LIGHTS_SGIX :: GLenum
gl_MAX_FRAGMENT_LIGHTS_SGIX = 0x8404