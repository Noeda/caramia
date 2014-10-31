-- This file was automatically generated.
module Graphics.OpenGL.Profile.Compatibility45 (
	-- * Graphics.OpenGL.Profile.Compatibility45
	  module Graphics.OpenGL.Profile.Compatibility44
	, module Graphics.OpenGL.Profile.Core45
	, glGetnColorTable
	, glGetnConvolutionFilter
	, glGetnHistogram
	, glGetnMapdv
	, glGetnMapfv
	, glGetnMapiv
	, glGetnMinmax
	, glGetnPixelMapfv
	, glGetnPixelMapuiv
	, glGetnPixelMapusv
	, glGetnPolygonStipple
	, glGetnSeparableFilter
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Profile.Compatibility44
import Graphics.OpenGL.Profile.Core45

glGetnColorTable :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnColorTable v0 v1 v2 v3 v4 = funGL 2686 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetnConvolutionFilter :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnConvolutionFilter v0 v1 v2 v3 v4 = funGL 2687 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glGetnHistogram :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnHistogram v0 v1 v2 v3 v4 v5 = funGL 2688 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnMapdv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLdouble -> m ()
glGetnMapdv v0 v1 v2 v3 = funGL 2689 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMapfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLfloat -> m ()
glGetnMapfv v0 v1 v2 v3 = funGL 2690 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMapiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLsizei -> Ptr GLint -> m ()
glGetnMapiv v0 v1 v2 v3 = funGL 2691 >>= \f -> liftIO $ f v0 v1 v2 v3

glGetnMinmax :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLboolean -> GLenum -> GLenum -> GLsizei -> Ptr () -> m ()
glGetnMinmax v0 v1 v2 v3 v4 v5 = funGL 2692 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5

glGetnPixelMapfv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLfloat -> m ()
glGetnPixelMapfv v0 v1 v2 = funGL 2693 >>= \f -> liftIO $ f v0 v1 v2

glGetnPixelMapuiv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLuint -> m ()
glGetnPixelMapuiv v0 v1 v2 = funGL 2694 >>= \f -> liftIO $ f v0 v1 v2

glGetnPixelMapusv :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLsizei -> Ptr GLushort -> m ()
glGetnPixelMapusv v0 v1 v2 = funGL 2695 >>= \f -> liftIO $ f v0 v1 v2

glGetnPolygonStipple :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLubyte -> m ()
glGetnPolygonStipple v0 v1 = funGL 2696 >>= \f -> liftIO $ f v0 v1

glGetnSeparableFilter :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLenum -> GLenum -> GLsizei -> Ptr () -> GLsizei -> Ptr () -> Ptr () -> m ()
glGetnSeparableFilter v0 v1 v2 v3 v4 v5 v6 v7 = funGL 2697 >>= \f -> liftIO $ f v0 v1 v2 v3 v4 v5 v6 v7