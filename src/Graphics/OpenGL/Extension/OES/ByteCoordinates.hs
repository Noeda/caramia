-- This file was automatically generated.
module Graphics.OpenGL.Extension.OES.ByteCoordinates (
	-- * Extension Support
	  gl_OES_byte_coordinates

	-- * GL_OES_byte_coordinates
	, glMultiTexCoord1bOES
	, glMultiTexCoord1bvOES
	, glMultiTexCoord2bOES
	, glMultiTexCoord2bvOES
	, glMultiTexCoord3bOES
	, glMultiTexCoord3bvOES
	, glMultiTexCoord4bOES
	, glMultiTexCoord4bvOES
	, glTexCoord1bOES
	, glTexCoord1bvOES
	, glTexCoord2bOES
	, glTexCoord2bvOES
	, glTexCoord3bOES
	, glTexCoord3bvOES
	, glTexCoord4bOES
	, glTexCoord4bvOES
	, glVertex2bOES
	, glVertex2bvOES
	, glVertex3bOES
	, glVertex3bvOES
	, glVertex4bOES
	, glVertex4bvOES
	, gl_BYTE
) where

import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Basic

import Graphics.OpenGL.Internal.Shared

gl_OES_byte_coordinates :: (Monad m, MonadReader e m, HasScope e) => m Bool
gl_OES_byte_coordinates = extGL 547

glMultiTexCoord1bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbyte -> m ()
glMultiTexCoord1bOES v0 v1 = funGL 1991 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord1bvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLbyte -> m ()
glMultiTexCoord1bvOES v0 v1 = funGL 1992 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord2bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbyte -> GLbyte -> m ()
glMultiTexCoord2bOES v0 v1 v2 = funGL 1993 >>= \f -> liftIO $ f v0 v1 v2

glMultiTexCoord2bvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLbyte -> m ()
glMultiTexCoord2bvOES v0 v1 = funGL 1994 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord3bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbyte -> GLbyte -> GLbyte -> m ()
glMultiTexCoord3bOES v0 v1 v2 v3 = funGL 1995 >>= \f -> liftIO $ f v0 v1 v2 v3

glMultiTexCoord3bvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLbyte -> m ()
glMultiTexCoord3bvOES v0 v1 = funGL 1996 >>= \f -> liftIO $ f v0 v1

glMultiTexCoord4bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> GLbyte -> GLbyte -> GLbyte -> GLbyte -> m ()
glMultiTexCoord4bOES v0 v1 v2 v3 v4 = funGL 1997 >>= \f -> liftIO $ f v0 v1 v2 v3 v4

glMultiTexCoord4bvOES :: (MonadIO m, MonadReader e m, HasScope e) => GLenum -> Ptr GLbyte -> m ()
glMultiTexCoord4bvOES v0 v1 = funGL 1998 >>= \f -> liftIO $ f v0 v1

glTexCoord1bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> m ()
glTexCoord1bOES v0 = funGL 1999 >>= \f -> liftIO $ f v0

glTexCoord1bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glTexCoord1bvOES v0 = funGL 2000 >>= \f -> liftIO $ f v0

glTexCoord2bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> m ()
glTexCoord2bOES v0 v1 = funGL 2001 >>= \f -> liftIO $ f v0 v1

glTexCoord2bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glTexCoord2bvOES v0 = funGL 2002 >>= \f -> liftIO $ f v0

glTexCoord3bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glTexCoord3bOES v0 v1 v2 = funGL 2003 >>= \f -> liftIO $ f v0 v1 v2

glTexCoord3bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glTexCoord3bvOES v0 = funGL 2004 >>= \f -> liftIO $ f v0

glTexCoord4bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> GLbyte -> m ()
glTexCoord4bOES v0 v1 v2 v3 = funGL 2005 >>= \f -> liftIO $ f v0 v1 v2 v3

glTexCoord4bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glTexCoord4bvOES v0 = funGL 2006 >>= \f -> liftIO $ f v0

glVertex2bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> m ()
glVertex2bOES v0 v1 = funGL 2007 >>= \f -> liftIO $ f v0 v1

glVertex2bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glVertex2bvOES v0 = funGL 2008 >>= \f -> liftIO $ f v0

glVertex3bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> m ()
glVertex3bOES v0 v1 v2 = funGL 2009 >>= \f -> liftIO $ f v0 v1 v2

glVertex3bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glVertex3bvOES v0 = funGL 2010 >>= \f -> liftIO $ f v0

glVertex4bOES :: (MonadIO m, MonadReader e m, HasScope e) => GLbyte -> GLbyte -> GLbyte -> GLbyte -> m ()
glVertex4bOES v0 v1 v2 v3 = funGL 2011 >>= \f -> liftIO $ f v0 v1 v2 v3

glVertex4bvOES :: (MonadIO m, MonadReader e m, HasScope e) => Ptr GLbyte -> m ()
glVertex4bvOES v0 = funGL 2012 >>= \f -> liftIO $ f v0