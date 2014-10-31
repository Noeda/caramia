-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.NameGenDelete (
	-- * Extension Support
	  gl_AMD_name_gen_delete

	-- * GL_AMD_name_gen_delete
	, glDeleteNamesAMD
	, glGenNamesAMD
	, glIsNameAMD
	, gl_DATA_BUFFER_AMD
	, gl_PERFORMANCE_MONITOR_AMD
	, gl_QUERY_OBJECT_AMD
	, gl_SAMPLER_OBJECT_AMD
	, gl_VERTEX_ARRAY_OBJECT_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_name_gen_delete :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_name_gen_delete = extGL 14

glDeleteNamesAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glDeleteNamesAMD v0 v1 v2 = funGL 45 >>= \f -> liftIO $ f v0 v1 v2

glGenNamesAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> Ptr GLuint -> m ()
glGenNamesAMD v0 v1 v2 = funGL 46 >>= \f -> liftIO $ f v0 v1 v2

glIsNameAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> m GLboolean
glIsNameAMD v0 v1 = funGL 47 >>= \f -> liftIO $ f v0 v1

gl_DATA_BUFFER_AMD :: GLenum
gl_DATA_BUFFER_AMD = 0x9151

gl_PERFORMANCE_MONITOR_AMD :: GLenum
gl_PERFORMANCE_MONITOR_AMD = 0x9152

gl_QUERY_OBJECT_AMD :: GLenum
gl_QUERY_OBJECT_AMD = 0x9153

gl_SAMPLER_OBJECT_AMD :: GLenum
gl_SAMPLER_OBJECT_AMD = 0x9155

gl_VERTEX_ARRAY_OBJECT_AMD :: GLenum
gl_VERTEX_ARRAY_OBJECT_AMD = 0x9154