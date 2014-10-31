-- This file was automatically generated.
module Graphics.OpenGL.Profile.EmbeddedCommon10 (
	-- * Graphics.OpenGL.Profile.EmbeddedCommon10
	  module Graphics.OpenGL.Profile.EmbeddedLite10
	, glAlphaFunc
	, glClearColor
	, glClearDepthf
	, glClipPlanef
	, glColor4f
	, glDepthRangef
	, glFogf
	, glFogfv
	, glFrustumf
	, glGetClipPlanef
	, glGetFloatv
	, glGetLightfv
	, glGetMaterialfv
	, glGetTexEnvfv
	, glGetTexParameterfv
	, glLightModelf
	, glLightModelfv
	, glLightf
	, glLightfv
	, glLineWidth
	, glLoadMatrixf
	, glMaterialf
	, glMaterialfv
	, glMultMatrixf
	, glMultiTexCoord4f
	, glNormal3f
	, glOrthof
	, glPointParameterf
	, glPointParameterfv
	, glPointSize
	, glPolygonOffset
	, glRotatef
	, glScalef
	, glTexEnvf
	, glTexEnvfv
	, glTexParameterf
	, glTexParameterfv
	, glTranslatef
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

import Graphics.OpenGL.Profile.EmbeddedLite10

glClipPlanef :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glClipPlanef v0 v1 = funGL 2971 >>= \f -> liftIO $ f v0 v1

glFrustumf :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glFrustumf v0 v1 v2 v3 v4 v5 = funGL 2972 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetClipPlanef :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetClipPlanef v0 v1 = funGL 2973 >>= \f -> liftIO $ f v0 v1

glOrthof :: (MonadIO m, MonadReader e m, HasScope e) => GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
glOrthof v0 v1 v2 v3 v4 v5 = funGL 2974 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5