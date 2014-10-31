-- This file was automatically generated.
module Graphics.OpenGL.Extension.ThreeDFX.Multisample (
	-- * Extension Support
	  gl_3DFX_multisample

	-- * GL_3DFX_multisample
	, gl_MULTISAMPLE_3DFX
	, gl_MULTISAMPLE_BIT_3DFX
	, gl_SAMPLES_3DFX
	, gl_SAMPLE_BUFFERS_3DFX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_3DFX_multisample :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_3DFX_multisample = extGL 0

gl_MULTISAMPLE_3DFX :: GLenum
gl_MULTISAMPLE_3DFX = 0x86B2

gl_MULTISAMPLE_BIT_3DFX :: GLenum
gl_MULTISAMPLE_BIT_3DFX = 0x20000000

gl_SAMPLES_3DFX :: GLenum
gl_SAMPLES_3DFX = 0x86B4

gl_SAMPLE_BUFFERS_3DFX :: GLenum
gl_SAMPLE_BUFFERS_3DFX = 0x86B3