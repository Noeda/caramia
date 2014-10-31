-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.IrInstrument1 (
	-- * Extension Support
	  gl_SGIX_ir_instrument1

	-- * GL_SGIX_ir_instrument1
	, gl_IR_INSTRUMENT1_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_ir_instrument1 :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_ir_instrument1 = extGL 644

gl_IR_INSTRUMENT1_SGIX :: GLenum
gl_IR_INSTRUMENT1_SGIX = 0x817F