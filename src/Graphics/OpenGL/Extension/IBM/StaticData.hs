-- This file was automatically generated.
module Graphics.OpenGL.Extension.IBM.StaticData (
	-- * Extension Support
	  gl_IBM_static_data

	-- * GL_IBM_static_data
	, glFlushStaticDataIBM
	, gl_ALL_STATIC_DATA_IBM
	, gl_STATIC_VERTEX_ARRAY_IBM
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IBM_static_data :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IBM_static_data = extGL 395

glFlushStaticDataIBM :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glFlushStaticDataIBM v0 = funGL 1472 >>= \f -> liftIO $ f v0

gl_ALL_STATIC_DATA_IBM :: GLenum
gl_ALL_STATIC_DATA_IBM = 103060

gl_STATIC_VERTEX_ARRAY_IBM :: GLenum
gl_STATIC_VERTEX_ARRAY_IBM = 103061