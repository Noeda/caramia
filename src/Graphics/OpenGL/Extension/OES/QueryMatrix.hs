-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.QueryMatrix (
	-- * Extension Support
	  gl_OES_query_matrix

	-- * GL_OES_query_matrix
	, glQueryMatrixxOES
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_OES_query_matrix :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_query_matrix = extGL 568

glQueryMatrixxOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLfixed -> Ptr GLint -> m GLbitfield
glQueryMatrixxOES v0 v1 = funGL 2156 >>= \f -> liftIO $ f v0 v1