{-# LANGUAGE NoImplicitPrelude, ScopedTypeVariables #-}

module Graphics.Caramia.Internal.ContextLocalData where

import Graphics.Caramia.Prelude
import qualified Data.IntMap.Strict as IM
import qualified Data.Map.Strict as M
import System.IO.Unsafe
import Data.Dynamic
import Control.Concurrent

-- | The type of a Caramia context ID.
type ContextID = Int

-- currently running contexts, map from thread IDs to context IDs
runningContexts :: IORef (M.Map ThreadId ContextID)
runningContexts = unsafePerformIO $ newIORef M.empty
{-# NOINLINE runningContexts #-}

-- used to give out new unique context IDs
nextContextID :: IORef ContextID
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
--
-- Returns `Nothing` if there is no context active.
currentContextID :: IO (Maybe ContextID)
currentContextID =
    M.lookup <$> myThreadId <*> readIORef runningContexts
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
storeContextLocalData :: Typeable a => a -> IO ()
storeContextLocalData value =
    maybe (error "storeContextLocalData: not in a context.")
          (\cid ->
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
retrieveContextLocalData :: forall a. Typeable a
                         => IO a  -- ^ Default value generating action; not
                                  -- evaluated if there was already a value
                                  -- stored.
                         -> IO a
retrieveContextLocalData defvalue =
    maybe (error "retrieveContextLocalData: not in a context.")
          (\cid -> do
              -- No need to care about IORef race conditions because all
              -- functions operating on a certain context ID will be
              -- run in the same thread, sequentially.
              snapshot <- readIORef contextLocalData
              case IM.lookup cid snapshot of
                  Nothing -> do
                      val <- dyndefvalue
                      atomicModifyIORef' contextLocalData $ \old ->
                          ( IM.insert cid (M.singleton typ val) old
                          , fromDyn val undefined )
                  Just old_map ->
                      case M.lookup typ old_map of
                          Nothing -> do
                              val <- dyndefvalue
                              atomicModifyIORef' contextLocalData $ \old ->
                                  ( IM.adjust (M.insert typ val)
                                              cid
                                              old
                                  , fromDyn val undefined )
                          Just value -> return (fromDyn value undefined))
          =<< currentContextID
  where
    typ = typeOf (undefined :: a)
    dyndefvalue = toDyn <$> defvalue
{-# INLINEABLE retrieveContextLocalData #-}


