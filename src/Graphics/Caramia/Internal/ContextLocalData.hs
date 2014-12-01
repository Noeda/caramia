{-# LANGUAGE NoImplicitPrelude, ScopedTypeVariables #-}
{-# LANGUAGE DeriveDataTypeable #-}

module Graphics.Caramia.Internal.ContextLocalData where

import Control.Concurrent
import Control.Monad.IO.Class
import Data.Dynamic
import Graphics.Caramia.Prelude
import qualified Data.IntMap.Strict as IM
import qualified Data.Map.Strict as M
import System.IO.Unsafe

-- | The type of a Caramia context ID.
newtype ContextID = ContextID Int
                    deriving ( Eq, Ord, Show, Typeable )

nextContextID :: IORef ContextID
nextContextID = unsafePerformIO $ newIORef $ ContextID 0
{-# NOINLINE nextContextID #-}

newContextID :: IO ContextID
newContextID = atomicModifyIORef' nextContextID $ \(ContextID old) ->
    ( ContextID $ old+1, ContextID old )

-- currently running contexts, map from thread IDs to context IDs
runningContexts :: IORef (M.Map ThreadId ContextID)
runningContexts = unsafePerformIO $ newIORef M.empty
{-# NOINLINE runningContexts #-}

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
--
-- Returns `Nothing` if there is no context active.
currentContextID :: MonadIO m => m (Maybe ContextID)
currentContextID =
    liftIO $ M.lookup <$> myThreadId <*> readIORef runningContexts
{-# INLINE currentContextID #-}

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
storeContextLocalData :: (MonadIO m, Typeable a) => a -> m ()
storeContextLocalData value =
    liftIO $ maybe (error "storeContextLocalData: not in a context.")
          (\(ContextID cid) ->
              atomicModifyIORef' contextLocalData $ \old ->
                  ( IM.alter (Just . maybe (M.singleton
                                            (typeOf value)
                                            (toDyn value))
                                           (M.insert (typeOf value)
                                                     (toDyn value)))
                              cid
                              old
                  , () ) )
          =<< currentContextID
{-# INLINE storeContextLocalData #-}

-- | Retrieves a context local value.
--
-- See `storeContextLocalData`.
retrieveContextLocalData :: forall m a. (MonadIO m, Typeable a)
                         => m a  -- ^ Default value generating action; not
                                  -- evaluated if there was already a value
                                  -- stored.
                         -> m a
retrieveContextLocalData defvalue =
    maybe (error "retrieveContextLocalData: not in a context.")
          (\(ContextID cid) -> do
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
                          Just value -> return (fromDyn value undefined))
          =<< liftIO currentContextID
  where
    typ = typeOf (undefined :: a)
    dyndefvalue = defvalue >>= return . toDyn
{-# INLINEABLE retrieveContextLocalData #-}


