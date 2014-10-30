{-# LANGUAGE NoImplicitPrelude, ScopedTypeVariables #-}
{-# LANGUAGE DeriveDataTypeable #-}

module Graphics.Caramia.Internal.ContextLocalData where

import Control.Concurrent
import Control.Monad.Catch
import Control.Monad.IO.Class
import Data.Dynamic
import qualified Data.IntMap.Strict as IM
import qualified Data.Map.Strict as M
import Graphics.Caramia.Prelude
import Graphics.Caramia.Context.Internal
import System.IO.Unsafe

-- | The type of a Caramia context ID.
newtype ContextID = ContextID { unContextID :: Int }
                    deriving ( Eq, Ord, Show, Typeable )

-- | Thrown when an invalid `ContextID` is used somewhere.
data InvalidContext = InvalidContext !ContextID
                      deriving ( Eq, Ord, Show, Typeable )

instance Exception InvalidContext

-- currently running contexts, map from thread IDs to context IDs
runningContexts :: IORef (M.Map ThreadId ContextID)
runningContexts = unsafePerformIO $ newIORef M.empty
{-# NOINLINE runningContexts #-}

-- used to give out new unique context IDs
nextContextID :: IORef Int
nextContextID = unsafePerformIO $ newIORef 0
{-# NOINLINE nextContextID #-}

-- context local data. This is like poor man's thread local storage but for
-- contexts.
--
-- The `TypeRep` and `Dynamic` lets this module be agnostic to what other
-- modules hang on to thread local data.
--
-- Other modules can specify a type that there should be only one per context.
-- And this type's TypeRep is stored/queried from the map below.
contextLocalData :: IORef (IM.IntMap (M.Map TypeRep Dynamic))
contextLocalData = unsafePerformIO $ newIORef IM.empty
{-# NOINLINE contextLocalData #-}

-- | Returns the current Caramia context ID.
--
-- The context ID is unique between different calls to `giveContext`.
currentContextID :: Context s ContextID
currentContextID = fromJust <$>
    liftIO (M.lookup <$> myThreadId <*> readIORef runningContexts)

-- | Same as `currentContextID` but works in any `MonadIO` monad. This one can
-- also fail.
--
-- Returns `Nothing` if there is no context active.
currentContextID' :: MonadIO m => m (Maybe ContextID)
currentContextID' = liftIO $
    M.lookup <$> myThreadId <*> readIORef runningContexts

-- | Stores a context local value.
--
-- The type of the given value is used as a key. This means that if a value of
-- the same type was stored before, that value is thrown away and replaced with
-- this new value you just gave.
--
-- The value is evaluated to WHNF.
--
-- You don't need this function to work with context local data.
-- `retrieveContextLocalData` is sufficient as it also lets you set a default
-- value in case a value was not already set.
--
-- Context local data is wiped to oblivion once `giveContext` ends.
storeContextLocalData :: Typeable a => a -> Context s ()
storeContextLocalData value = do
    cid <- currentContextID
    liftIO $ atomicModifyIORef' contextLocalData $ \old ->
        ( IM.alter (Just . maybe (M.singleton
                                 (typeOf value)
                                 (toDyn value))
                                 (M.insert (typeOf value)
                                             (toDyn value)))
                    (unContextID cid)
                    old
        , () )

-- | Retrieves a context local value.
--
-- See `storeContextLocalData`.
retrieveContextLocalData :: forall s a. Typeable a
                         => Context s a
                            -- ^ Default value generating action; not
                            -- evaluated if there was already a value
                            -- stored.
                         -> Context s a
retrieveContextLocalData defvalue = do
    cid <- unContextID <$> currentContextID
    -- No need to care about IORef race conditions because all
    -- functions operating on a certain context ID will be
    -- run in the same thread, sequentially.
    snapshot <- liftIO $ readIORef contextLocalData
    case IM.lookup cid snapshot of
        Nothing -> do
            val <- dyndefvalue
            liftIO $ atomicModifyIORef' contextLocalData $ \old ->
                ( IM.insert cid (M.singleton typ val) old
                , fromDyn val undefined )
        Just old_map ->
            case M.lookup typ old_map of
                Nothing -> do
                    val <- dyndefvalue
                    liftIO $ atomicModifyIORef' contextLocalData $ \old ->
                        ( IM.adjust (M.insert typ val)
                                    cid
                                    old
                        , fromDyn val undefined )
                Just value -> return (fromDyn value undefined)
  where
    typ = typeOf (undefined :: a)
    dyndefvalue = toDyn <$> defvalue

