-- This file was automatically generated.
module Graphics.OpenGL.Extension.APPLE.VertexProgramEvaluators (
	-- * Extension Support
	  gl_APPLE_vertex_program_evaluators

	-- * GL_APPLE_vertex_program_evaluators
	, glDisableVertexAttribAPPLE
	, glEnableVertexAttribAPPLE
	, glIsVertexAttribEnabledAPPLE
	, glMapVertexAttrib1dAPPLE
	, glMapVertexAttrib1fAPPLE
	, glMapVertexAttrib2dAPPLE
	, glMapVertexAttrib2fAPPLE
	, gl_VERTEX_ATTRIB_MAP1_APPLE
	, gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE
	, gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
	, gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE
	, gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE
	, gl_VERTEX_ATTRIB_MAP2_APPLE
	, gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE
	, gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE
	, gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE
	, gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_APPLE_vertex_program_evaluators :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_APPLE_vertex_program_evaluators = extGL 67

glDisableVertexAttribAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glDisableVertexAttribAPPLE v0 v1 = funGL 109 >>= \f -> liftIO $ f v0 v1

glEnableVertexAttribAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m ()
glEnableVertexAttribAPPLE v0 v1 = funGL 110 >>= \f -> liftIO $ f v0 v1

glIsVertexAttribEnabledAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLenum -> m GLboolean
glIsVertexAttribEnabledAPPLE v0 v1 = funGL 111 >>= \f -> liftIO $ f v0 v1

glMapVertexAttrib1dAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> m ()
glMapVertexAttrib1dAPPLE v0 v1 v2 v3 v4 v5 v6 = funGL 112 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMapVertexAttrib1fAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> m ()
glMapVertexAttrib1fAPPLE v0 v1 v2 v3 v4 v5 v6 = funGL 113 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6

glMapVertexAttrib2dAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> GLint -> GLint -> Ptr GLdouble -> m ()
glMapVertexAttrib2dAPPLE v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 114 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

glMapVertexAttrib2fAPPLE :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLuint -> GLfloat -> GLfloat -> GLint -> GLint -> GLfloat -> GLfloat -> GLint -> GLint -> Ptr GLfloat -> m ()
glMapVertexAttrib2fAPPLE v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = funGL 115 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10

gl_VERTEX_ATTRIB_MAP1_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_APPLE = 0x8A00

gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_COEFF_APPLE = 0x8A03

gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE = 0x8A05

gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_ORDER_APPLE = 0x8A04

gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP1_SIZE_APPLE = 0x8A02

gl_VERTEX_ATTRIB_MAP2_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_APPLE = 0x8A01

gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_COEFF_APPLE = 0x8A07

gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE = 0x8A09

gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_ORDER_APPLE = 0x8A08

gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE :: GLenum
gl_VERTEX_ATTRIB_MAP2_SIZE_APPLE = 0x8A06