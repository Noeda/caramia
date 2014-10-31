-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.GlobalAlpha (
	-- * Extension Support
	  gl_SUN_global_alpha

	-- * GL_SUN_global_alpha
	, glGlobalAlphaFactorbSUN
	, glGlobalAlphaFactordSUN
	, glGlobalAlphaFactorfSUN
	, glGlobalAlphaFactoriSUN
	, glGlobalAlphaFactorsSUN
	, glGlobalAlphaFactorubSUN
	, glGlobalAlphaFactoruiSUN
	, glGlobalAlphaFactorusSUN
	, gl_GLOBAL_ALPHA_FACTOR_SUN
	, gl_GLOBAL_ALPHA_SUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_global_alpha :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_global_alpha = extGL 671

glGlobalAlphaFactorbSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> m ()
glGlobalAlphaFactorbSUN v0 = funGL 2279 >>= \f -> liftIO $ f v0

glGlobalAlphaFactordSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> m ()
glGlobalAlphaFactordSUN v0 = funGL 2280 >>= \f -> liftIO $ f v0

glGlobalAlphaFactorfSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> m ()
glGlobalAlphaFactorfSUN v0 = funGL 2281 >>= \f -> liftIO $ f v0

glGlobalAlphaFactoriSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glGlobalAlphaFactoriSUN v0 = funGL 2282 >>= \f -> liftIO $ f v0

glGlobalAlphaFactorsSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> m ()
glGlobalAlphaFactorsSUN v0 = funGL 2283 >>= \f -> liftIO $ f v0

glGlobalAlphaFactorubSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> m ()
glGlobalAlphaFactorubSUN v0 = funGL 2284 >>= \f -> liftIO $ f v0

glGlobalAlphaFactoruiSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glGlobalAlphaFactoruiSUN v0 = funGL 2285 >>= \f -> liftIO $ f v0

glGlobalAlphaFactorusSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLushort -> m ()
glGlobalAlphaFactorusSUN v0 = funGL 2286 >>= \f -> liftIO $ f v0

gl_GLOBAL_ALPHA_FACTOR_SUN :: GLenum
gl_GLOBAL_ALPHA_FACTOR_SUN = 0x81DA

gl_GLOBAL_ALPHA_SUN :: GLenum
gl_GLOBAL_ALPHA_SUN = 0x81D9