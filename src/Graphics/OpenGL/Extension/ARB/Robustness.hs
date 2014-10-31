-- This file was automatically generated.
module Graphics.OpenGL.Extension.ARB.Robustness (
	-- * Extension Support
	  gl_ARB_robustness

	-- * GL_ARB_robustness
	, glGetGraphicsResetStatusARB
	, glGetnColorTableARB
	, glGetnCompressedTexImageARB
	, glGetnConvolutionFilterARB
	, glGetnHistogramARB
	, glGetnMapdvARB
	, glGetnMapfvARB
	, glGetnMapivARB
	, glGetnMinmaxARB
	, glGetnPixelMapfvARB
	, glGetnPixelMapuivARB
	, glGetnPixelMapusvARB
	, glGetnPolygonStippleARB
	, glGetnSeparableFilterARB
	, glGetnTexImageARB
	, glGetnUniformdvARB
	, glGetnUniformfvARB
	, glGetnUniformivARB
	, glGetnUniformuivARB
	, glReadnPixelsARB
	, gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
	, gl_GUILTY_CONTEXT_RESET_ARB
	, gl_INNOCENT_CONTEXT_RESET_ARB
	, gl_LOSE_CONTEXT_ON_RESET_ARB
	, gl_NO_ERROR
	, gl_NO_RESET_NOTIFICATION_ARB
	, gl_RESET_NOTIFICATION_STRATEGY_ARB
	, gl_UNKNOWN_CONTEXT_RESET_ARB
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_ARB_robustness :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_ARB_robustness = extGL 143

glGetGraphicsResetStatusARB :: (MonadIO m, MonadReader e m, HasScope e) => m GLenum
glGetGraphicsResetStatusARB = funGL 450 >>= \f -> liftIO $ f

glGetnColorTableARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnColorTableARB v0 v1 v2 v3 v4 = funGL 451 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetnCompressedTexImageARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLsizei -> Ptr () -> m ()
glGetnCompressedTexImageARB v0 v1 v2 v3 = funGL 452 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnConvolutionFilterARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnConvolutionFilterARB v0 v1 v2 v3 v4 = funGL 453 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetnHistogramARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnHistogramARB v0 v1 v2 v3 v4 v5 = funGL 454 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnMapdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> m ()
glGetnMapdvARB v0 v1 v2 v3 = funGL 455 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMapfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> m ()
glGetnMapfvARB v0 v1 v2 v3 = funGL 456 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMapivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLint -> m ()
glGetnMapivARB v0 v1 v2 v3 = funGL 457 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMinmaxARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnMinmaxARB v0 v1 v2 v3 v4 v5 = funGL 458 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnPixelMapfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLfloat -> m ()
glGetnPixelMapfvARB v0 v1 v2 = funGL 459 >>= \f -> liftIO $ f v0 v1 v2

glGetnPixelMapuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glGetnPixelMapuivARB v0 v1 v2 = funGL 460 >>= \f -> liftIO $ f v0 v1 v2

glGetnPixelMapusvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLushort -> m ()
glGetnPixelMapusvARB v0 v1 v2 = funGL 461 >>= \f -> liftIO $ f v0 v1 v2

glGetnPolygonStippleARB :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLubyte -> m ()
glGetnPolygonStippleARB v0 v1 = funGL 462 >>= \f -> liftIO $ f v0 v1

glGetnSeparableFilterARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> GLsizei -> Ptr () -> Ptr () -> m ()
glGetnSeparableFilterARB v0 v1 v2 v3 v4 v5 v6 v7 = funGL 463 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

glGetnTexImageARB :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLint -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnTexImageARB v0 v1 v2 v3 v4 v5 = funGL 464 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnUniformdvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLdouble -> m ()
glGetnUniformdvARB v0 v1 v2 v3 = funGL 465 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformfvARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLfloat -> m ()
glGetnUniformfvARB v0 v1 v2 v3 = funGL 466 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLint -> m ()
glGetnUniformivARB v0 v1 v2 v3 = funGL 467 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnUniformuivARB :: (MonadIO m, MonadReader e m, HasScope e) => GLuint -> GLint -> GLsizei -> Ptr GLuint -> m ()
glGetnUniformuivARB v0 v1 v2 v3 = funGL 468 >>= \f -> liftIO $ f v0 v1 v2 v3

glReadnPixelsARB :: (MonadIO m, MonadReader e m, HasScope e) => GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glReadnPixelsARB v0 v1 v2 v3 v4 v5 v6 v7 = funGL 469 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7

gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB :: GLenum
gl_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB = 0x00000004

gl_GUILTY_CONTEXT_RESET_ARB :: GLenum
gl_GUILTY_CONTEXT_RESET_ARB = 0x8253

gl_INNOCENT_CONTEXT_RESET_ARB :: GLenum
gl_INNOCENT_CONTEXT_RESET_ARB = 0x8254

gl_LOSE_CONTEXT_ON_RESET_ARB :: GLenum
gl_LOSE_CONTEXT_ON_RESET_ARB = 0x8252

gl_NO_RESET_NOTIFICATION_ARB :: GLenum
gl_NO_RESET_NOTIFICATION_ARB = 0x8261

gl_RESET_NOTIFICATION_STRATEGY_ARB :: GLenum
gl_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256

gl_UNKNOWN_CONTEXT_RESET_ARB :: GLenum
gl_UNKNOWN_CONTEXT_RESET_ARB = 0x8255