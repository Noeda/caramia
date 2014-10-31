-- This file was automatically generated.
module Graphics.OpenGL.Extension.NV.VdpauInterop (
	-- * Extension Support
	  gl_NV_vdpau_interop

	-- * GL_NV_vdpau_interop
	, glVDPAUFiniNV
	, glVDPAUGetSurfaceivNV
	, glVDPAUInitNV
	, glVDPAUIsSurfaceNV
	, glVDPAUMapSurfacesNV
	, glVDPAURegisterOutputSurfaceNV
	, glVDPAURegisterVideoSurfaceNV
	, glVDPAUSurfaceAccessNV
	, glVDPAUUnmapSurfacesNV
	, glVDPAUUnregisterSurfaceNV
	, gl_SURFACE_MAPPED_NV
	, gl_SURFACE_REGISTERED_NV
	, gl_SURFACE_STATE_NV
	, gl_WRITE_DISCARD_NV
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_NV_vdpau_interop :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_NV_vdpau_interop = extGL 530

glVDPAUFiniNV :: (MonadIO m, MonadReader e m, HasScope e) => m ()
glVDPAUFiniNV = funGL 1844 >>= \f -> liftIO $ f

glVDPAUGetSurfaceivNV :: (MonadIO m, MonadReader e m, HasScope e) => GLvdpauSurfaceNV -> GLenum -> GLsizei -> Ptr GLsizei -> Ptr GLint -> m ()
glVDPAUGetSurfaceivNV v0 v1 v2 v3 v4 = funGL 1845 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glVDPAUInitNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> Ptr () -> m ()
glVDPAUInitNV v0 v1 = funGL 1846 >>= \f -> liftIO $ f v0 v1

glVDPAUIsSurfaceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLvdpauSurfaceNV -> m GLboolean
glVDPAUIsSurfaceNV v0 = funGL 1847 >>= \f -> liftIO $ f v0

glVDPAUMapSurfacesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLvdpauSurfaceNV -> m ()
glVDPAUMapSurfacesNV v0 v1 = funGL 1848 >>= \f -> liftIO $ f v0 v1

glVDPAURegisterOutputSurfaceNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLenum -> GLsizei -> Ptr GLuint -> m GLvdpauSurfaceNV
glVDPAURegisterOutputSurfaceNV v0 v1 v2 v3 = funGL 1849 >>= \f -> liftIO $ f v0 v1 v2 v3

glVDPAURegisterVideoSurfaceNV :: (MonadIO m, MonadReader e m, HasScope e) => Ptr () -> GLenum -> GLsizei -> Ptr GLuint -> m GLvdpauSurfaceNV
glVDPAURegisterVideoSurfaceNV v0 v1 v2 v3 = funGL 1850 >>= \f -> liftIO $ f v0 v1 v2 v3

glVDPAUSurfaceAccessNV :: (MonadIO m, MonadReader e m, HasScope e) => GLvdpauSurfaceNV -> GLenum -> m ()
glVDPAUSurfaceAccessNV v0 v1 = funGL 1851 >>= \f -> liftIO $ f v0 v1

glVDPAUUnmapSurfacesNV :: (MonadIO m, MonadReader e m, HasScope e) => GLsizei -> Ptr GLvdpauSurfaceNV -> m ()
glVDPAUUnmapSurfacesNV v0 v1 = funGL 1852 >>= \f -> liftIO $ f v0 v1

glVDPAUUnregisterSurfaceNV :: (MonadIO m, MonadReader e m, HasScope e) => GLvdpauSurfaceNV -> m ()
glVDPAUUnregisterSurfaceNV v0 = funGL 1853 >>= \f -> liftIO $ f v0

gl_SURFACE_MAPPED_NV :: GLenum
gl_SURFACE_MAPPED_NV = 0x8700

gl_SURFACE_REGISTERED_NV :: GLenum
gl_SURFACE_REGISTERED_NV = 0x86FD

gl_SURFACE_STATE_NV :: GLenum
gl_SURFACE_STATE_NV = 0x86EB

gl_WRITE_DISCARD_NV :: GLenum
gl_WRITE_DISCARD_NV = 0x88BE