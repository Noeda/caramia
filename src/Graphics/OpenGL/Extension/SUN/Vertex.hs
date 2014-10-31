-- This file was automatically generated.
module Graphics.OpenGL.Extension.SUN.Vertex (
	-- * Extension Support
	  gl_SUN_vertex

	-- * GL_SUN_vertex
	, glColor3fVertex3fSUN
	, glColor3fVertex3fvSUN
	, glColor4fNormal3fVertex3fSUN
	, glColor4fNormal3fVertex3fvSUN
	, glColor4ubVertex2fSUN
	, glColor4ubVertex2fvSUN
	, glColor4ubVertex3fSUN
	, glColor4ubVertex3fvSUN
	, glNormal3fVertex3fSUN
	, glNormal3fVertex3fvSUN
	, glReplacementCodeuiColor3fVertex3fSUN
	, glReplacementCodeuiColor3fVertex3fvSUN
	, glReplacementCodeuiColor4fNormal3fVertex3fSUN
	, glReplacementCodeuiColor4fNormal3fVertex3fvSUN
	, glReplacementCodeuiColor4ubVertex3fSUN
	, glReplacementCodeuiColor4ubVertex3fvSUN
	, glReplacementCodeuiNormal3fVertex3fSUN
	, glReplacementCodeuiNormal3fVertex3fvSUN
	, glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN
	, glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN
	, glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN
	, glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN
	, glReplacementCodeuiTexCoord2fVertex3fSUN
	, glReplacementCodeuiTexCoord2fVertex3fvSUN
	, glReplacementCodeuiVertex3fSUN
	, glReplacementCodeuiVertex3fvSUN
	, glTexCoord2fColor3fVertex3fSUN
	, glTexCoord2fColor3fVertex3fvSUN
	, glTexCoord2fColor4fNormal3fVertex3fSUN
	, glTexCoord2fColor4fNormal3fVertex3fvSUN
	, glTexCoord2fColor4ubVertex3fSUN
	, glTexCoord2fColor4ubVertex3fvSUN
	, glTexCoord2fNormal3fVertex3fSUN
	, glTexCoord2fNormal3fVertex3fvSUN
	, glTexCoord2fVertex3fSUN
	, glTexCoord2fVertex3fvSUN
	, glTexCoord4fColor4fNormal3fVertex4fSUN
	, glTexCoord4fColor4fNormal3fVertex4fvSUN
	, glTexCoord4fVertex4fSUN
	, glTexCoord4fVertex4fvSUN
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SUN_vertex :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SUN_vertex = extGL 675

glColor3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glColor3fVertex3fSUN v0 v1 v2 v3 v4 v5 = funGL 2295 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glColor3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> m ()
glColor3fVertex3fvSUN v0 v1 = funGL 2296 >>= \f -> liftIO $ f v0 v1

glColor4fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glColor4fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = funGL 2297 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9

glColor4fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glColor4fNormal3fVertex3fvSUN v0 v1 v2 = funGL 2298 >>= \f -> liftIO $ f v0 v1 v2

glColor4ubVertex2fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> m ()
glColor4ubVertex2fSUN v0 v1 v2 v3 v4 v5 = funGL 2299 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glColor4ubVertex2fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> Ptr GLfloat -> m ()
glColor4ubVertex2fvSUN v0 v1 = funGL 2300 >>= \f -> liftIO $ f v0 v1

glColor4ubVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> m ()
glColor4ubVertex3fSUN v0 v1 v2 v3 v4 v5 v6 = funGL 2301 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glColor4ubVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLubyte -> Ptr GLfloat -> m ()
glColor4ubVertex3fvSUN v0 v1 = funGL 2302 >>= \f -> liftIO $ f v0 v1

glNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 = funGL 2303 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> m ()
glNormal3fVertex3fvSUN v0 v1 = funGL 2304 >>= \f -> liftIO $ f v0 v1

glReplacementCodeuiColor3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiColor3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 = funGL 2305 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glReplacementCodeuiColor3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiColor3fVertex3fvSUN v0 v1 v2 = funGL 2306 >>= \f -> liftIO $ f v0 v1 v2

glReplacementCodeuiColor4fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiColor4fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 2307 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glReplacementCodeuiColor4fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiColor4fNormal3fVertex3fvSUN v0 v1 v2 v3 = funGL 2308 >>= \f -> liftIO $ f v0 v1 v2 v3

glReplacementCodeuiColor4ubVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiColor4ubVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2309 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glReplacementCodeuiColor4ubVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLubyte -> Ptr GLfloat -> m ()
glReplacementCodeuiColor4ubVertex3fvSUN v0 v1 v2 = funGL 2310 >>= \f -> liftIO $ f v0 v1 v2

glReplacementCodeuiNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 = funGL 2311 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glReplacementCodeuiNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiNormal3fVertex3fvSUN v0 v1 v2 = funGL 2312 >>= \f -> liftIO $ f v0 v1 v2

glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = funGL 2313 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12

glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN v0 v1 v2 v3 v4 = funGL 2314 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2315 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN v0 v1 v2 v3 = funGL 2316 >>= \f -> liftIO $ f v0 v1 v2 v3

glReplacementCodeuiTexCoord2fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiTexCoord2fVertex3fSUN v0 v1 v2 v3 v4 v5 = funGL 2317 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glReplacementCodeuiTexCoord2fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> Ptr GLfloat -> m ()
glReplacementCodeuiTexCoord2fVertex3fvSUN v0 v1 v2 = funGL 2318 >>= \f -> liftIO $ f v0 v1 v2

glReplacementCodeuiVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
glReplacementCodeuiVertex3fSUN v0 v1 v2 v3 = funGL 2319 >>= \f -> liftIO $ f v0 v1 v2 v3

glReplacementCodeuiVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLuint -> Ptr GLfloat -> m ()
glReplacementCodeuiVertex3fvSUN v0 v1 = funGL 2320 >>= \f -> liftIO $ f v0 v1

glTexCoord2fColor3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord2fColor3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2321 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTexCoord2fColor3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord2fColor3fVertex3fvSUN v0 v1 v2 = funGL 2322 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord2fColor4fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord2fColor4fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = funGL 2323 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11

glTexCoord2fColor4fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord2fColor4fNormal3fVertex3fvSUN v0 v1 v2 v3 = funGL 2324 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord2fColor4ubVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLubyte -> GLubyte -> GLubyte -> GLubyte -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord2fColor4ubVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 = funGL 2325 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8

glTexCoord2fColor4ubVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLubyte -> Ptr GLfloat -> m ()
glTexCoord2fColor4ubVertex3fvSUN v0 v1 v2 = funGL 2326 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord2fNormal3fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord2fNormal3fVertex3fSUN v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2327 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTexCoord2fNormal3fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord2fNormal3fVertex3fvSUN v0 v1 v2 = funGL 2328 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord2fVertex3fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord2fVertex3fSUN v0 v1 v2 v3 v4 = funGL 2329 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glTexCoord2fVertex3fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord2fVertex3fvSUN v0 v1 = funGL 2330 >>= \f -> liftIO $ f v0 v1

glTexCoord4fColor4fNormal3fVertex4fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord4fColor4fNormal3fVertex4fSUN v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 = funGL 2331 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14

glTexCoord4fColor4fNormal3fVertex4fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord4fColor4fNormal3fVertex4fvSUN v0 v1 v2 v3 = funGL 2332 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4fVertex4fSUN :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glTexCoord4fVertex4fSUN v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2333 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glTexCoord4fVertex4fvSUN :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfloat -> Ptr GLfloat -> m ()
glTexCoord4fVertex4fvSUN v0 v1 = funGL 2334 >>= \f -> liftIO $ f v0 v1