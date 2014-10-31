-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIS.PointLineTexgen (
	-- * Extension Support
	  gl_SGIS_point_line_texgen

	-- * GL_SGIS_point_line_texgen
	, gl_EYE_DISTANCE_TO_LINE_SGIS
	, gl_EYE_DISTANCE_TO_POINT_SGIS
	, gl_EYE_LINE_SGIS
	, gl_EYE_POINT_SGIS
	, gl_OBJECT_DISTANCE_TO_LINE_SGIS
	, gl_OBJECT_DISTANCE_TO_POINT_SGIS
	, gl_OBJECT_LINE_SGIS
	, gl_OBJECT_POINT_SGIS
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIS_point_line_texgen :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIS_point_line_texgen = extGL 618

gl_EYE_DISTANCE_TO_LINE_SGIS :: GLenum
gl_EYE_DISTANCE_TO_LINE_SGIS = 0x81F2

gl_EYE_DISTANCE_TO_POINT_SGIS :: GLenum
gl_EYE_DISTANCE_TO_POINT_SGIS = 0x81F0

gl_EYE_LINE_SGIS :: GLenum
gl_EYE_LINE_SGIS = 0x81F6

gl_EYE_POINT_SGIS :: GLenum
gl_EYE_POINT_SGIS = 0x81F4

gl_OBJECT_DISTANCE_TO_LINE_SGIS :: GLenum
gl_OBJECT_DISTANCE_TO_LINE_SGIS = 0x81F3

gl_OBJECT_DISTANCE_TO_POINT_SGIS :: GLenum
gl_OBJECT_DISTANCE_TO_POINT_SGIS = 0x81F1

gl_OBJECT_LINE_SGIS :: GLenum
gl_OBJECT_LINE_SGIS = 0x81F7

gl_OBJECT_POINT_SGIS :: GLenum
gl_OBJECT_POINT_SGIS = 0x81F5