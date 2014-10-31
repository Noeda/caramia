-- This file was automatically generated.
module Graphics.OpenGL.Extension.SGIX.Instruments (
	-- * Extension Support
	  gl_SGIX_instruments

	-- * GL_SGIX_instruments
	, glGetInstrumentsSGIX
	, glInstrumentsBufferSGIX
	, glPollInstrumentsSGIX
	, glReadInstrumentsSGIX
	, glStartInstrumentsSGIX
	, glStopInstrumentsSGIX
	, gl_INSTRUMENT_BUFFER_POINTER_SGIX
	, gl_INSTRUMENT_MEASUREMENTS_SGIX
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_SGIX_instruments :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_SGIX_instruments = extGL 642

glGetInstrumentsSGIX :: (MonadIO m, MonadReader e m, HasScope e) => m GLint
glGetInstrumentsSGIX = funGL 2256 >>= \f -> liftIO $ f

glInstrumentsBufferSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLint -> m ()
glInstrumentsBufferSGIX v0 v1 = funGL 2257 >>= \f -> liftIO $ f v0 v1

glPollInstrumentsSGIX :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLint -> m GLint
glPollInstrumentsSGIX v0 = funGL 2258 >>= \f -> liftIO $ f v0

glReadInstrumentsSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glReadInstrumentsSGIX v0 = funGL 2259 >>= \f -> liftIO $ f v0

glStartInstrumentsSGIX :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glStartInstrumentsSGIX = funGL 2260 >>= \f -> liftIO $ f

glStopInstrumentsSGIX :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> m ()
glStopInstrumentsSGIX v0 = funGL 2261 >>= \f -> liftIO $ f v0

gl_INSTRUMENT_BUFFER_POINTER_SGIX :: GLenum
gl_INSTRUMENT_BUFFER_POINTER_SGIX = 0x8180

gl_INSTRUMENT_MEASUREMENTS_SGIX :: GLenum
gl_INSTRUMENT_MEASUREMENTS_SGIX = 0x8181