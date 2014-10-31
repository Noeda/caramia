-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.PointSizeArray (
	-- * Extension Support
	  gl_OES_point_size_array

	-- * GL_OES_point_size_array
	, glPointSizePointerOES
	, gl_POINT_SIZE_ARRAY_BUFFER_BINDING_OES
	, gl_POINT_SIZE_ARRAY_OES
	, gl_POINT_SIZE_ARRAY_POINTER_OES
	, gl_POINT_SIZE_ARRAY_STRIDE_OES
	, gl_POINT_SIZE_ARRAY_TYPE_OES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_point_size_array :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_point_size_array = extGL 566

glPointSizePointerOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glPointSizePointerOES v0 v1 v2 = funGL 2155 >>= \f -> liftIO $ f v0 v1 v2

gl_POINT_SIZE_ARRAY_BUFFER_BINDING_OES :: GLenum
gl_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = 0x8B9F

gl_POINT_SIZE_ARRAY_OES :: GLenum
gl_POINT_SIZE_ARRAY_OES = 0x8B9C

gl_POINT_SIZE_ARRAY_POINTER_OES :: GLenum
gl_POINT_SIZE_ARRAY_POINTER_OES = 0x898C

gl_POINT_SIZE_ARRAY_STRIDE_OES :: GLenum
gl_POINT_SIZE_ARRAY_STRIDE_OES = 0x898B

gl_POINT_SIZE_ARRAY_TYPE_OES :: GLenum
gl_POINT_SIZE_ARRAY_TYPE_OES = 0x898A