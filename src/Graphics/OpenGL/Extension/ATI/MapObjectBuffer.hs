-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.MapObjectBuffer (
	-- * Extension Support
	  gl_ATI_map_object_buffer

	-- * GL_ATI_map_object_buffer
	, glMapObjectBufferATI
	, glUnmapObjectBufferATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_map_object_buffer :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_map_object_buffer = extGL 232

glMapObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m (Ptr ())
glMapObjectBufferATI v0 = funGL 835 >>= \f -> liftIO $ f v0

glUnmapObjectBufferATI :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> m ()
glUnmapObjectBufferATI v0 = funGL 836 >>= \f -> liftIO $ f v0