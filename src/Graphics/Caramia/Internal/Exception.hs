{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Graphics.Caramia.Internal.Exception
    ( NoSupport(..)
    , checkExtension
    , checkExtensionM
    , checkOpenGLOrExtensionM )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Data.Text ( Text )
import Graphics.Caramia.Internal.OpenGLVersion
import Graphics.Caramia.Prelude

-- | Thrown when there was a detected attempt to use an OpenGL feature that is
-- not supported by the driver, hardware or platform.
--
-- Caramia cannot detect all attempts to use non-supported features.
data NoSupport = NoSupport { info :: Text }
                 -- ^ The text contains human-readable string that may tell
                 -- what exactly is missing and where.
                 deriving ( Eq, Ord, Show, Read, Typeable )

instance Exception NoSupport

-- | Checks that extension is available and throw `NoSupport` with the given
-- extension name if it is not.
checkExtension :: MonadIO m => Text -> Bool -> m ()
checkExtension _ True = return ()
checkExtension extname False =
    liftIO $ throwM $
    NoSupport $ "This operation requires " <> extname <> " extension."
{-# INLINE checkExtension #-}

-- | Same as `checkExtension` but takes an action to run afterwards, it checks
-- for the extension and then runs the action.
checkExtensionM :: MonadIO m => Text -> Bool -> m a -> m a
checkExtensionM ext test action = checkExtension ext test >> action

-- | Checks that OpenGL version is at least given version or that an extension
-- is available.
--
-- This is for the common case of checking core OpenGL version and falling back
-- to a core extension.
checkOpenGLOrExtensionM :: MonadIO m
                        => OpenGLVersion -> Text -> Bool -> m a -> m a
checkOpenGLOrExtensionM ver ext test action =
    if openGLVersion >= ver
      then action
      else checkExtensionM ext test action


