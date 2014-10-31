-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.FogDistance (
	-- * Extension Support
	  gl_NV_fog_distance

	-- * GL_NV_fog_distance
	, gl_EYE_PLANE
	, gl_EYE_PLANE_ABSOLUTE_NV
	, gl_EYE_RADIAL_NV
	, gl_FOG_DISTANCE_MODE_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_NV_fog_distance :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_fog_distance = extGL 455

gl_EYE_PLANE_ABSOLUTE_NV :: GLenum
gl_EYE_PLANE_ABSOLUTE_NV = 0x855C

gl_EYE_RADIAL_NV :: GLenum
gl_EYE_RADIAL_NV = 0x855B

gl_FOG_DISTANCE_MODE_NV :: GLenum
gl_FOG_DISTANCE_MODE_NV = 0x855A