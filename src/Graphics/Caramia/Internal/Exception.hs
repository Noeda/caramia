{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Graphics.Caramia.Internal.Exception
    ( NoSupport(..)
    , checkExtension )
    where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Data.Text ( Text )
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

