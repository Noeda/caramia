-- | This module is used as the prelude module inside Caramia.
--

{-# LANGUAGE ScopedTypeVariables #-}

module Graphics.Caramia.Prelude
    ( module Ex
    , safeFromIntegral
    , showT
    , atomicModifyIORef_' )
    where

import Prelude as Ex hiding
                      ( sequence, mapM, or, concat, notElem, elem
                      , foldl, foldr1, concatMap, any, sum, foldr
                      , and, all, mapM_, sequence_, product, maximum
                      , foldl1, minimum, (.), id )

import Control.Applicative as Ex
import Control.Arrow as Ex
import Control.Category as Ex
import Control.Monad as Ex hiding ( msum, forM, forM_, sequence, mapM, mapM_
                                  , sequence_ )
import Data.Foldable as Ex
import Data.Maybe as Ex
import Data.Int as Ex
import Data.IORef as Ex
import Data.Semigroup as Ex
import qualified Data.Text as T
import Data.Traversable as Ex
import Data.Typeable as Ex
import Data.Unique as Ex
import Data.Word as Ex

-- | Same as `show` but the result will be a `T.Text`, not `String`.
showT :: Show a => a -> T.Text
showT = T.pack . show
{-# INLINE showT #-}

-- | Same as `atomicModifyIORef'` but does not return a value.
atomicModifyIORef_' :: IORef a -> (a -> a) -> IO ()
atomicModifyIORef_' ref fun = atomicModifyIORef' ref $ \old -> ( fun old, () )
{-# INLINE atomicModifyIORef_' #-}

-- | Similar to `fromIntegral` but raises a user error if the source
-- integer cannot be represented in the target type.
--
-- This cannot turn an integral into a non-integral type.
safeFromIntegral :: forall a b. (Num a, Integral a, Num b, Integral b) =>
                    a -> b
safeFromIntegral from
    | from /= (fromIntegral result :: a) = error "Invalid coercion."
    | otherwise = result
  where
    result = fromIntegral from :: b
{-# INLINE safeFromIntegral #-}

