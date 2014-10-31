-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.CoordinateFrame (
	-- * Extension Support
	  gl_EXT_coordinate_frame

	-- * GL_EXT_coordinate_frame
	, glBinormal3bEXT
	, glBinormal3bvEXT
	, glBinormal3dEXT
	, glBinormal3dvEXT
	, glBinormal3fEXT
	, glBinormal3fvEXT
	, glBinormal3iEXT
	, glBinormal3ivEXT
	, glBinormal3sEXT
	, glBinormal3svEXT
	, glBinormalPointerEXT
	, glTangent3bEXT
	, glTangent3bvEXT
	, glTangent3dEXT
	, glTangent3dvEXT
	, glTangent3fEXT
	, glTangent3fvEXT
	, glTangent3iEXT
	, glTangent3ivEXT
	, glTangent3sEXT
	, glTangent3svEXT
	, glTangentPointerEXT
	, gl_BINORMAL_ARRAY_EXT
	, gl_BINORMAL_ARRAY_POINTER_EXT
	, gl_BINORMAL_ARRAY_STRIDE_EXT
	, gl_BINORMAL_ARRAY_TYPE_EXT
	, gl_CURRENT_BINORMAL_EXT
	, gl_CURRENT_TANGENT_EXT
	, gl_MAP1_BINORMAL_EXT
	, gl_MAP1_TANGENT_EXT
	, gl_MAP2_BINORMAL_EXT
	, gl_MAP2_TANGENT_EXT
	, gl_TANGENT_ARRAY_EXT
	, gl_TANGENT_ARRAY_POINTER_EXT
	, gl_TANGENT_ARRAY_STRIDE_EXT
	, gl_TANGENT_ARRAY_TYPE_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_coordinate_frame :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_coordinate_frame = extGL 262

glBinormal3bEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glBinormal3bEXT v0 v1 v2 = funGL 925 >>= \f -> liftIO $ f v0 v1 v2

glBinormal3bvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glBinormal3bvEXT v0 = funGL 926 >>= \f -> liftIO $ f v0

glBinormal3dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glBinormal3dEXT v0 v1 v2 = funGL 927 >>= \f -> liftIO $ f v0 v1 v2

glBinormal3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glBinormal3dvEXT v0 = funGL 928 >>= \f -> liftIO $ f v0

glBinormal3fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glBinormal3fEXT v0 v1 v2 = funGL 929 >>= \f -> liftIO $ f v0 v1 v2

glBinormal3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glBinormal3fvEXT v0 = funGL 930 >>= \f -> liftIO $ f v0

glBinormal3iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glBinormal3iEXT v0 v1 v2 = funGL 931 >>= \f -> liftIO $ f v0 v1 v2

glBinormal3ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glBinormal3ivEXT v0 = funGL 932 >>= \f -> liftIO $ f v0

glBinormal3sEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glBinormal3sEXT v0 v1 v2 = funGL 933 >>= \f -> liftIO $ f v0 v1 v2

glBinormal3svEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glBinormal3svEXT v0 = funGL 934 >>= \f -> liftIO $ f v0

glBinormalPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glBinormalPointerEXT v0 v1 v2 = funGL 935 >>= \f -> liftIO $ f v0 v1 v2

glTangent3bEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glTangent3bEXT v0 v1 v2 = funGL 936 >>= \f -> liftIO $ f v0 v1 v2

glTangent3bvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glTangent3bvEXT v0 = funGL 937 >>= \f -> liftIO $ f v0

glTangent3dEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLdouble -> GLdouble -> GLdouble -> m ()
glTangent3dEXT v0 v1 v2 = funGL 938 >>= \f -> liftIO $ f v0 v1 v2

glTangent3dvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glTangent3dvEXT v0 = funGL 939 >>= \f -> liftIO $ f v0

glTangent3fEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> m ()
glTangent3fEXT v0 v1 v2 = funGL 940 >>= \f -> liftIO $ f v0 v1 v2

glTangent3fvEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> m ()
glTangent3fvEXT v0 = funGL 941 >>= \f -> liftIO $ f v0

glTangent3iEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLint -> m ()
glTangent3iEXT v0 v1 v2 = funGL 942 >>= \f -> liftIO $ f v0 v1 v2

glTangent3ivEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m ()
glTangent3ivEXT v0 = funGL 943 >>= \f -> liftIO $ f v0

glTangent3sEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLshort -> GLshort -> GLshort -> m ()
glTangent3sEXT v0 v1 v2 = funGL 944 >>= \f -> liftIO $ f v0 v1 v2

glTangent3svEXT :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLshort -> m ()
glTangent3svEXT v0 = funGL 945 >>= \f -> liftIO $ f v0

glTangentPointerEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr () -> m ()
glTangentPointerEXT v0 v1 v2 = funGL 946 >>= \f -> liftIO $ f v0 v1 v2

gl_BINORMAL_ARRAY_EXT :: GLenum
gl_BINORMAL_ARRAY_EXT = 0x843A

gl_BINORMAL_ARRAY_POINTER_EXT :: GLenum
gl_BINORMAL_ARRAY_POINTER_EXT = 0x8443

gl_BINORMAL_ARRAY_STRIDE_EXT :: GLenum
gl_BINORMAL_ARRAY_STRIDE_EXT = 0x8441

gl_BINORMAL_ARRAY_TYPE_EXT :: GLenum
gl_BINORMAL_ARRAY_TYPE_EXT = 0x8440

gl_CURRENT_BINORMAL_EXT :: GLenum
gl_CURRENT_BINORMAL_EXT = 0x843C

gl_CURRENT_TANGENT_EXT :: GLenum
gl_CURRENT_TANGENT_EXT = 0x843B

gl_MAP1_BINORMAL_EXT :: GLenum
gl_MAP1_BINORMAL_EXT = 0x8446

gl_MAP1_TANGENT_EXT :: GLenum
gl_MAP1_TANGENT_EXT = 0x8444

gl_MAP2_BINORMAL_EXT :: GLenum
gl_MAP2_BINORMAL_EXT = 0x8447

gl_MAP2_TANGENT_EXT :: GLenum
gl_MAP2_TANGENT_EXT = 0x8445

gl_TANGENT_ARRAY_EXT :: GLenum
gl_TANGENT_ARRAY_EXT = 0x8439

gl_TANGENT_ARRAY_POINTER_EXT :: GLenum
gl_TANGENT_ARRAY_POINTER_EXT = 0x8442

gl_TANGENT_ARRAY_STRIDE_EXT :: GLenum
gl_TANGENT_ARRAY_STRIDE_EXT = 0x843F

gl_TANGENT_ARRAY_TYPE_EXT :: GLenum
gl_TANGENT_ARRAY_TYPE_EXT = 0x843E