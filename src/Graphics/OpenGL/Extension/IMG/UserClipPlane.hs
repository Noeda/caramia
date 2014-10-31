-- This file was automatically generated.
module Graphics.OpenGL.Extension.IMG.UserClipPlane (
	-- * Extension Support
	  gl_IMG_user_clip_plane

	-- * GL_IMG_user_clip_plane
	, glClipPlanefIMG
	, glClipPlanexIMG
	, gl_CLIP_PLANE0_IMG
	, gl_CLIP_PLANE1_IMG
	, gl_CLIP_PLANE2_IMG
	, gl_CLIP_PLANE3_IMG
	, gl_CLIP_PLANE4_IMG
	, gl_CLIP_PLANE5_IMG
	, gl_MAX_CLIP_PLANES_IMG
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_IMG_user_clip_plane :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_IMG_user_clip_plane = extGL 405

glClipPlanefIMG :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glClipPlanefIMG v0 v1 = funGL 1483 >>= \f -> liftIO $ f v0 v1

glClipPlanexIMG :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfixed -> m ()
glClipPlanexIMG v0 v1 = funGL 1484 >>= \f -> liftIO $ f v0 v1

gl_CLIP_PLANE0_IMG :: GLenum
gl_CLIP_PLANE0_IMG = 0x3000

gl_CLIP_PLANE1_IMG :: GLenum
gl_CLIP_PLANE1_IMG = 0x3001

gl_CLIP_PLANE2_IMG :: GLenum
gl_CLIP_PLANE2_IMG = 0x3002

gl_CLIP_PLANE3_IMG :: GLenum
gl_CLIP_PLANE3_IMG = 0x3003

gl_CLIP_PLANE4_IMG :: GLenum
gl_CLIP_PLANE4_IMG = 0x3004

gl_CLIP_PLANE5_IMG :: GLenum
gl_CLIP_PLANE5_IMG = 0x3005

gl_MAX_CLIP_PLANES_IMG :: GLenum
gl_MAX_CLIP_PLANES_IMG = 0x0D32