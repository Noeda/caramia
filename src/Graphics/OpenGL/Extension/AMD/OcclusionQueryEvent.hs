-- This file was automatically generated.
module Graphics.OpenGL.Extension.AMD.OcclusionQueryEvent (
	-- * Extension Support
	  gl_AMD_occlusion_query_event

	-- * GL_AMD_occlusion_query_event
	, glQueryObjectParameteruiAMD
	, gl_OCCLUSION_QUERY_EVENT_MASK_AMD
	, gl_QUERY_ALL_EVENT_BITS_AMD
	, gl_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD
	, gl_QUERY_DEPTH_FAIL_EVENT_BIT_AMD
	, gl_QUERY_DEPTH_PASS_EVENT_BIT_AMD
	, gl_QUERY_STENCIL_FAIL_EVENT_BIT_AMD
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

gl_AMD_occlusion_query_event :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_AMD_occlusion_query_event = extGL 15

glQueryObjectParameteruiAMD :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLuint -> GLenum -> GLuint -> m ()
glQueryObjectParameteruiAMD v0 v1 v2 v3 = funGL 48 >>= \f -> liftIO $ f v0 v1 v2 v3

gl_OCCLUSION_QUERY_EVENT_MASK_AMD :: GLenum
gl_OCCLUSION_QUERY_EVENT_MASK_AMD = 0x874F

gl_QUERY_ALL_EVENT_BITS_AMD :: GLenum
gl_QUERY_ALL_EVENT_BITS_AMD = 0xFFFFFFFF

gl_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD :: GLenum
gl_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD = 0x00000008

gl_QUERY_DEPTH_FAIL_EVENT_BIT_AMD :: GLenum
gl_QUERY_DEPTH_FAIL_EVENT_BIT_AMD = 0x00000002

gl_QUERY_DEPTH_PASS_EVENT_BIT_AMD :: GLenum
gl_QUERY_DEPTH_PASS_EVENT_BIT_AMD = 0x00000001

gl_QUERY_STENCIL_FAIL_EVENT_BIT_AMD :: GLenum
gl_QUERY_STENCIL_FAIL_EVENT_BIT_AMD = 0x00000004