-- This file was automatically generated.
module Graphics.OpenGL.Extension.ATI.EnvmapBumpmap (
	-- * Extension Support
	  gl_ATI_envmap_bumpmap

	-- * GL_ATI_envmap_bumpmap
	, glGetTexBumpParameterfvATI
	, glGetTexBumpParameterivATI
	, glTexBumpParameterfvATI
	, glTexBumpParameterivATI
	, gl_BUMP_ENVMAP_ATI
	, gl_BUMP_NUM_TEX_UNITS_ATI
	, gl_BUMP_ROT_MATRIX_ATI
	, gl_BUMP_ROT_MATRIX_SIZE_ATI
	, gl_BUMP_TARGET_ATI
	, gl_BUMP_TEX_UNITS_ATI
	, gl_DU8DV8_ATI
	, gl_DUDV_ATI
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_ATI_envmap_bumpmap :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ATI_envmap_bumpmap = extGL 230

glGetTexBumpParameterfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glGetTexBumpParameterfvATI v0 v1 = funGL 817 >>= \f -> liftIO $ f v0 v1

glGetTexBumpParameterivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glGetTexBumpParameterivATI v0 v1 = funGL 818 >>= \f -> liftIO $ f v0 v1

glTexBumpParameterfvATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLfloat -> m ()
glTexBumpParameterfvATI v0 v1 = funGL 819 >>= \f -> liftIO $ f v0 v1

glTexBumpParameterivATI :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLint -> m ()
glTexBumpParameterivATI v0 v1 = funGL 820 >>= \f -> liftIO $ f v0 v1

gl_BUMP_ENVMAP_ATI :: GLenum
gl_BUMP_ENVMAP_ATI = 0x877B

gl_BUMP_NUM_TEX_UNITS_ATI :: GLenum
gl_BUMP_NUM_TEX_UNITS_ATI = 0x8777

gl_BUMP_ROT_MATRIX_ATI :: GLenum
gl_BUMP_ROT_MATRIX_ATI = 0x8775

gl_BUMP_ROT_MATRIX_SIZE_ATI :: GLenum
gl_BUMP_ROT_MATRIX_SIZE_ATI = 0x8776

gl_BUMP_TARGET_ATI :: GLenum
gl_BUMP_TARGET_ATI = 0x877C

gl_BUMP_TEX_UNITS_ATI :: GLenum
gl_BUMP_TEX_UNITS_ATI = 0x8778

gl_DU8DV8_ATI :: GLenum
gl_DU8DV8_ATI = 0x877A

gl_DUDV_ATI :: GLenum
gl_DUDV_ATI = 0x8779