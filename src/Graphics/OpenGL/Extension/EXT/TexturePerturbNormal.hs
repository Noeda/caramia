-- This file was automatically generated.
module Graphics.OpenGL.Extension.EXT.TexturePerturbNormal (
	-- * Extension Support
	  gl_EXT_texture_perturb_normal

	-- * GL_EXT_texture_perturb_normal
	, glTextureNormalEXT
	, gl_PERTURB_EXT
	, gl_TEXTURE_NORMAL_EXT
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_EXT_texture_perturb_normal :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_EXT_texture_perturb_normal = extGL 366

glTextureNormalEXT :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> m ()
glTextureNormalEXT v0 = funGL 1385 >>= \f -> liftIO $ f v0

gl_PERTURB_EXT :: GLenum
gl_PERTURB_EXT = 0x85AE

gl_TEXTURE_NORMAL_EXT :: GLenum
gl_TEXTURE_NORMAL_EXT = 0x85AF