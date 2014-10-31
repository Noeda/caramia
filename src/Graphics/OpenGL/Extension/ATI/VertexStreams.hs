-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.VertexStreams (
	-- * Extension Support
	  gl_ATI_vertex_streams

	-- * GL_ATI_vertex_streams
	, glClientActiveVertexStreamATI
	, glNormalStream3bATI
	, glNormalStream3bvATI
	, glNormalStream3dATI
	, glNormalStream3dvATI
	, glNormalStream3fATI
	, glNormalStream3fvATI
	, glNormalStream3iATI
	, glNormalStream3ivATI
	, glNormalStream3sATI
	, glNormalStream3svATI
	, glVertexBlendEnvfATI
	, glVertexBlendEnviATI
	, glVertexStream1dATI
	, glVertexStream1dvATI
	, glVertexStream1fATI
	, glVertexStream1fvATI
	, glVertexStream1iATI
	, glVertexStream1ivATI
	, glVertexStream1sATI
	, glVertexStream1svATI
	, glVertexStream2dATI
	, glVertexStream2dvATI
	, glVertexStream2fATI
	, glVertexStream2fvATI
	, glVertexStream2iATI
	, glVertexStream2ivATI
	, glVertexStream2sATI
	, glVertexStream2svATI
	, glVertexStream3dATI
	, glVertexStream3dvATI
	, glVertexStream3fATI
	, glVertexStream3fvATI
	, glVertexStream3iATI
	, glVertexStream3ivATI
	, glVertexStream3sATI
	, glVertexStream3svATI
	, glVertexStream4dATI
	, glVertexStream4dvATI
	, glVertexStream4fATI
	, glVertexStream4fvATI
	, glVertexStream4iATI
	, glVertexStream4ivATI
	, glVertexStream4sATI
	, glVertexStream4svATI
	, gl_MAX_VERTEX_STREAMS_ATI
	, gl_VERTEX_SOURCE_ATI
	, gl_VERTEX_STREAM0_ATI
	, gl_VERTEX_STREAM1_ATI
	, gl_VERTEX_STREAM2_ATI
	, gl_VERTEX_STREAM3_ATI
	, gl_VERTEX_STREAM4_ATI
	, gl_VERTEX_STREAM5_ATI
	, gl_VERTEX_STREAM6_ATI
	, gl_VERTEX_STREAM7_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_vertex_streams :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_vertex_streams = extGL 243

glClientActiveVertexStreamATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glClientActiveVertexStreamATI v0 = funGL 856 >>= \f -> liftIO $ f v0

glNormalStream3bATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbyte -> GLbyte -> GLbyte -> m ()
glNormalStream3bATI v0 v1 v2 v3 = funGL 857 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalStream3bvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLbyte -> m ()
glNormalStream3bvATI v0 v1 = funGL 858 >>= \f -> liftIO $ f v0 v1

glNormalStream3dATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glNormalStream3dATI v0 v1 v2 v3 = funGL 859 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalStream3dvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glNormalStream3dvATI v0 v1 = funGL 860 >>= \f -> liftIO $ f v0 v1

glNormalStream3fATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glNormalStream3fATI v0 v1 v2 v3 = funGL 861 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalStream3fvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glNormalStream3fvATI v0 v1 = funGL 862 >>= \f -> liftIO $ f v0 v1

glNormalStream3iATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> m ()
glNormalStream3iATI v0 v1 v2 v3 = funGL 863 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalStream3ivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glNormalStream3ivATI v0 v1 = funGL 864 >>= \f -> liftIO $ f v0 v1

glNormalStream3sATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> m ()
glNormalStream3sATI v0 v1 v2 v3 = funGL 865 >>= \f -> liftIO $ f v0 v1 v2 v3

glNormalStream3svATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glNormalStream3svATI v0 v1 = funGL 866 >>= \f -> liftIO $ f v0 v1

glVertexBlendEnvfATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glVertexBlendEnvfATI v0 v1 = funGL 867 >>= \f -> liftIO $ f v0 v1

glVertexBlendEnviATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glVertexBlendEnviATI v0 v1 = funGL 868 >>= \f -> liftIO $ f v0 v1

glVertexStream1dATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> m ()
glVertexStream1dATI v0 v1 = funGL 869 >>= \f -> liftIO $ f v0 v1

glVertexStream1dvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glVertexStream1dvATI v0 v1 = funGL 870 >>= \f -> liftIO $ f v0 v1

glVertexStream1fATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> m ()
glVertexStream1fATI v0 v1 = funGL 871 >>= \f -> liftIO $ f v0 v1

glVertexStream1fvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glVertexStream1fvATI v0 v1 = funGL 872 >>= \f -> liftIO $ f v0 v1

glVertexStream1iATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> m ()
glVertexStream1iATI v0 v1 = funGL 873 >>= \f -> liftIO $ f v0 v1

glVertexStream1ivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glVertexStream1ivATI v0 v1 = funGL 874 >>= \f -> liftIO $ f v0 v1

glVertexStream1sATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> m ()
glVertexStream1sATI v0 v1 = funGL 875 >>= \f -> liftIO $ f v0 v1

glVertexStream1svATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glVertexStream1svATI v0 v1 = funGL 876 >>= \f -> liftIO $ f v0 v1

glVertexStream2dATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> m ()
glVertexStream2dATI v0 v1 v2 = funGL 877 >>= \f -> liftIO $ f v0 v1 v2

glVertexStream2dvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glVertexStream2dvATI v0 v1 = funGL 878 >>= \f -> liftIO $ f v0 v1

glVertexStream2fATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> m ()
glVertexStream2fATI v0 v1 v2 = funGL 879 >>= \f -> liftIO $ f v0 v1 v2

glVertexStream2fvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glVertexStream2fvATI v0 v1 = funGL 880 >>= \f -> liftIO $ f v0 v1

glVertexStream2iATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> m ()
glVertexStream2iATI v0 v1 v2 = funGL 881 >>= \f -> liftIO $ f v0 v1 v2

glVertexStream2ivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glVertexStream2ivATI v0 v1 = funGL 882 >>= \f -> liftIO $ f v0 v1

glVertexStream2sATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> m ()
glVertexStream2sATI v0 v1 v2 = funGL 883 >>= \f -> liftIO $ f v0 v1 v2

glVertexStream2svATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glVertexStream2svATI v0 v1 = funGL 884 >>= \f -> liftIO $ f v0 v1

glVertexStream3dATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexStream3dATI v0 v1 v2 v3 = funGL 885 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexStream3dvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glVertexStream3dvATI v0 v1 = funGL 886 >>= \f -> liftIO $ f v0 v1

glVertexStream3fATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexStream3fATI v0 v1 v2 v3 = funGL 887 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexStream3fvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glVertexStream3fvATI v0 v1 = funGL 888 >>= \f -> liftIO $ f v0 v1

glVertexStream3iATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> m ()
glVertexStream3iATI v0 v1 v2 v3 = funGL 889 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexStream3ivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glVertexStream3ivATI v0 v1 = funGL 890 >>= \f -> liftIO $ f v0 v1

glVertexStream3sATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> m ()
glVertexStream3sATI v0 v1 v2 v3 = funGL 891 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertexStream3svATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glVertexStream3svATI v0 v1 = funGL 892 >>= \f -> liftIO $ f v0 v1

glVertexStream4dATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> m ()
glVertexStream4dATI v0 v1 v2 v3 v4 = funGL 893 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexStream4dvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLdouble -> m ()
glVertexStream4dvATI v0 v1 = funGL 894 >>= \f -> liftIO $ f v0 v1

glVertexStream4fATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glVertexStream4fATI v0 v1 v2 v3 v4 = funGL 895 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexStream4fvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glVertexStream4fvATI v0 v1 = funGL 896 >>= \f -> liftIO $ f v0 v1

glVertexStream4iATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLint -> GLint -> GLint -> m ()
glVertexStream4iATI v0 v1 v2 v3 v4 = funGL 897 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexStream4ivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glVertexStream4ivATI v0 v1 = funGL 898 >>= \f -> liftIO $ f v0 v1

glVertexStream4sATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLshort -> GLshort -> GLshort -> GLshort -> m ()
glVertexStream4sATI v0 v1 v2 v3 v4 = funGL 899 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVertexStream4svATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLshort -> m ()
glVertexStream4svATI v0 v1 = funGL 900 >>= \f -> liftIO $ f v0 v1

gl_MAX_VERTEX_STREAMS_ATI :: GLenum
gl_MAX_VERTEX_STREAMS_ATI = 0x876B

gl_VERTEX_SOURCE_ATI :: GLenum
gl_VERTEX_SOURCE_ATI = 0x8774

gl_VERTEX_STREAM0_ATI :: GLenum
gl_VERTEX_STREAM0_ATI = 0x876C

gl_VERTEX_STREAM1_ATI :: GLenum
gl_VERTEX_STREAM1_ATI = 0x876D

gl_VERTEX_STREAM2_ATI :: GLenum
gl_VERTEX_STREAM2_ATI = 0x876E

gl_VERTEX_STREAM3_ATI :: GLenum
gl_VERTEX_STREAM3_ATI = 0x876F

gl_VERTEX_STREAM4_ATI :: GLenum
gl_VERTEX_STREAM4_ATI = 0x8770

gl_VERTEX_STREAM5_ATI :: GLenum
gl_VERTEX_STREAM5_ATI = 0x8771

gl_VERTEX_STREAM6_ATI :: GLenum
gl_VERTEX_STREAM6_ATI = 0x8772

gl_VERTEX_STREAM7_ATI :: GLenum
gl_VERTEX_STREAM7_ATI = 0x8773