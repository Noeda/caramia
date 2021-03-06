-- | Module for using the OpenGL debug extensions for debug output.

{-# LANGUAGE NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Internal.OpenGLDebug
    ( activateDebugMode
    , flushDebugMessages )
    where

import Graphics.GL.Ext.KHR.Debug

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.ContextLocalData
import Control.Monad.Trans.State.Strict
import Control.Monad.IO.Class
import Control.Monad.Catch
import System.IO
import Foreign.Storable
import Foreign.C.String
import Foreign.Marshal.Array
import Foreign.Ptr

newtype DebugModeActivated = DebugModeActivated Bool
                             deriving ( Typeable )

activateDebugMode :: IO ()
activateDebugMode = when gl_KHR_debug $ mask_ $ do
    glDebugMessageControl GL_DONT_CARE
                          GL_DONT_CARE
                          GL_DONT_CARE
                          0
                          nullPtr
                          GL_TRUE
    glEnable GL_DEBUG_OUTPUT
    withCStringLen "Debug output activated." $ \(cstr, len) ->
        glDebugMessageInsert GL_DEBUG_SOURCE_APPLICATION
                             GL_DEBUG_TYPE_OTHER
                             0
                             GL_DEBUG_SEVERITY_LOW
                             (fromIntegral len)
                             cstr
    storeContextLocalData (DebugModeActivated True)

flushDebugMessages :: MonadIO m => m ()
flushDebugMessages = liftIO $ do
    DebugModeActivated debug_mode <-
        retrieveContextLocalData $ return $ DebugModeActivated False
    when debug_mode $
        allocaArray 65535 $ \cstr_msg ->
        allocaArray maxMsgs $ \sources ->
        allocaArray maxMsgs $ \types ->
        allocaArray maxMsgs $ \ids ->
        allocaArray maxMsgs $ \severities ->
        allocaArray maxMsgs $ \lengths -> do
            num_msgs <- fromIntegral <$>
                        glGetDebugMessageLog (fromIntegral maxMsgs)
                                            65535
                                            sources
                                            types
                                            ids
                                            severities
                                            lengths
                                            cstr_msg

            flip evalStateT cstr_msg $ for_ [0..num_msgs-1] $ \index -> do
                src <- peo sources index
                typ <- peo types index
                id <- peo ids index
                severity <- peo severities index
                length <- peo lengths index
                cur_ptr <- get

                str <- liftIO $ peekCStringLen (cur_ptr, fromIntegral length)
                liftIO $ hPutStrLn stderr $
                    "[" <> show id <> ", " <>
                           showSrc src <> ", " <>
                           showType typ <> ", " <>
                           showSeverity severity <> "] " <>
                    str

                put (plusPtr cur_ptr $ fromIntegral length)

            when (num_msgs >= maxMsgs) flushDebugMessages
  where
    peo ptr idx = liftIO $ peekElemOff ptr idx

    maxMsgs = 10000

showSeverity :: GLenum -> String
showSeverity x | x == GL_DEBUG_SEVERITY_HIGH = "high"
               | x == GL_DEBUG_SEVERITY_MEDIUM = "medium"
               | x == GL_DEBUG_SEVERITY_LOW = "low"
showSeverity _ = "unknown"

showType :: GLenum -> String
showType x | x == GL_DEBUG_TYPE_ERROR = "error"
           | x == GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR = "deprecated"
           | x == GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR = "undefined"
           | x == GL_DEBUG_TYPE_PORTABILITY = "portability"
           | x == GL_DEBUG_TYPE_PERFORMANCE = "performance"
           | x == GL_DEBUG_TYPE_OTHER = "other"
showType _ = "unknown"

showSrc :: GLenum -> String
showSrc x | x == GL_DEBUG_SOURCE_APPLICATION = "application"
          | x == GL_DEBUG_SOURCE_OTHER = "other"
          | x == GL_DEBUG_SOURCE_API = "api"
          | x == GL_DEBUG_SOURCE_WINDOW_SYSTEM = "windowsystem"
          | x == GL_DEBUG_SOURCE_SHADER_COMPILER = "shadercompiler"
          | x == GL_DEBUG_SOURCE_THIRD_PARTY = "thirdparty"
showSrc _ = "unknown"


