-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.ReferencePlane (
	-- * Extension Support
	  gl_SGIX_reference_plane

	-- * GL_SGIX_reference_plane
	, glReferencePlaneSGIX
	, gl_REFERENCE_PLANE_EQUATION_SGIX
	, gl_REFERENCE_PLANE_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_reference_plane :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_reference_plane = extGL 649

glReferencePlaneSGIX :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLdouble -> m ()
glReferencePlaneSGIX v0 = funGL 2273 >>= \f -> liftIO $ f v0

gl_REFERENCE_PLANE_EQUATION_SGIX :: GLenum
gl_REFERENCE_PLANE_EQUATION_SGIX = 0x817E

gl_REFERENCE_PLANE_SGIX :: GLenum
gl_REFERENCE_PLANE_SGIX = 0x817D