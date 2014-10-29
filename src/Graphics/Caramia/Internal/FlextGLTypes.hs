-- | Automatically generated raw OpenGL bindings using flextGL
--
-- <https://github.com/Noeda/flextGL>
--

{-# LANGUAGE EmptyDataDecls, DeriveDataTypeable, CPP #-}

module Graphics.Caramia.Internal.FlextGLTypes
    ( GLsync
    , GLsyncob()
    , GLhalf
    , GLhalfARB
    , GLintptrARB
    , GLsizeiptrARB
    , GLDEBUGPROC
    , GLDEBUGPROCARB
    , GLDEBUGPROCKHR
    , GLDEBUGPROCAMD
    , GLbyte
    , GLubyte
    , GLfloat
    , GLclampf
    , GLfixed
    , GLint64
    , GLuint64
    , GLint64EXT
    , GLuint64EXT
    , GLintptr
    , GLsizeiptr
    , GLhalfNV
    , GLvdpauSurfaceNV
    , GLenum
    , GLboolean
    , GLvoid
    , GLbitfield
    , GLshort
    , GLint
    , GLclampx
    , GLushort
    , GLuint
    , GLsizei
    , GLdouble
    , GLclampd
    , GLeglImageOESob()
    , GLeglImageOES
    , GLchar
    , GLcharARB
    , GLhandleARB )
    where

import Data.Int
import Data.Typeable
import Data.Word
import Foreign.C.Types
import Foreign.Ptr

data GLsyncob deriving ( Typeable )
type GLsync = Ptr GLsyncob

type GLhalf = Word16
type GLhalfARB = Word16
type GLintptrARB = CPtrdiff
type GLsizeiptrARB = CPtrdiff
type GLDEBUGPROC =
    FunPtr (GLenum -> GLenum -> GLuint -> GLenum -> GLsizei -> Ptr GLchar -> Ptr () -> IO ())
type GLDEBUGPROCARB = GLDEBUGPROC
type GLDEBUGPROCKHR = GLDEBUGPROC
type GLDEBUGPROCAMD =
    FunPtr (GLuint -> GLenum -> GLenum -> GLsizei -> Ptr GLchar -> Ptr () -> IO ())
type GLbyte = CChar
type GLubyte = CUChar
type GLfloat = CFloat
type GLclampf = CFloat
type GLfixed = Int32
type GLint64 = Int64
type GLuint64 = Word64
type GLint64EXT = Int64
type GLuint64EXT = Word64
type GLintptr = CIntPtr
type GLsizeiptr = CSize
type GLhalfNV = CUShort
type GLvdpauSurfaceNV = GLintptr
type GLenum = CUInt
type GLboolean = CUChar
type GLvoid = ()
type GLbitfield = CUInt
type GLshort = CShort
type GLint = CInt
type GLclampx = CInt
type GLushort = CUShort
type GLuint = CUInt
type GLsizei = CInt
type GLdouble = CDouble
type GLclampd = CDouble
data GLeglImageOESob
type GLeglImageOES = Ptr GLeglImageOESob
type GLchar = CChar
type GLcharARB = CChar
#ifdef __APPLE__
type GLhandleARB = Ptr ()
#else
type GLhandleARB = CUInt
#endif

