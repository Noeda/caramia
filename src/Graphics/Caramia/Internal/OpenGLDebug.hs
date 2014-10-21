-- | Module for using the OpenGL debug extensions for debug output.

{-# LANGUAGE NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Internal.OpenGLDebug
    ( activateDebugMode
    , flushDebugMessages )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Internal.ContextLocalData
import Control.Monad.Trans.State.Strict
import Control.Monad.IO.Class
import Control.Exception
import System.IO
import Foreign.Storable
import Foreign.C.String
import Foreign.Marshal.Array
import Foreign.Ptr

newtype DebugModeActivated = DebugModeActivated Bool
                             deriving ( Typeable )

activateDebugMode :: IO ()
activateDebugMode = do
    necessary_extensions <- has_GL_KHR_debug
    when necessary_extensions reallyActivateDebugMode
  where
    reallyActivateDebugMode = mask_ $ do
        glDebugMessageControl gl_DONT_CARE
                              gl_DONT_CARE
                              gl_DONT_CARE
                              0
                              nullPtr
                              (fromIntegral gl_TRUE)
        glEnable gl_DEBUG_OUTPUT
        withCStringLen "Debug output activated." $ \(cstr, len) ->
            glDebugMessageInsert gl_DEBUG_SOURCE_APPLICATION
                                 gl_DEBUG_TYPE_OTHER
                                 0
                                 gl_DEBUG_SEVERITY_LOW
                                 (fromIntegral len)
                                 cstr
        storeContextLocalData (DebugModeActivated True)

flushDebugMessages :: IO ()
flushDebugMessages = do
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
showSeverity x | x == gl_DEBUG_SEVERITY_HIGH = "high"
               | x == gl_DEBUG_SEVERITY_MEDIUM = "medium"
               | x == gl_DEBUG_SEVERITY_LOW = "low"
showSeverity _ = "unknown"

showType :: GLenum -> String
showType x | x == gl_DEBUG_TYPE_ERROR = "error"
           | x == gl_DEBUG_TYPE_DEPRECATED_BEHAVIOR = "deprecated"
           | x == gl_DEBUG_TYPE_UNDEFINED_BEHAVIOR = "undefined"
           | x == gl_DEBUG_TYPE_PORTABILITY = "portability"
           | x == gl_DEBUG_TYPE_PERFORMANCE = "performance"
           | x == gl_DEBUG_TYPE_OTHER = "other"
showType _ = "unknown"

showSrc :: GLenum -> String
showSrc x | x == gl_DEBUG_SOURCE_APPLICATION = "application"
          | x == gl_DEBUG_SOURCE_OTHER = "other"
          | x == gl_DEBUG_SOURCE_API = "api"
          | x == gl_DEBUG_SOURCE_WINDOW_SYSTEM = "windowsystem"
          | x == gl_DEBUG_SOURCE_SHADER_COMPILER = "shadercompiler"
          | x == gl_DEBUG_SOURCE_THIRD_PARTY = "thirdparty"
showSrc _ = "unknown"


