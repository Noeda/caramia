-- | 'lens' package compatible Lens.
--
-- This is used to avoid 'lens' dependency.
--

{-# LANGUAGE RankNTypes, NoImplicitPrelude #-}

module Graphics.Caramia.Internal.Lens
    ( Lens
    , Lens'
    , lens )
    where

import Graphics.Caramia.Prelude

type Lens s t a b = forall f. Functor f => (a -> f b) -> s -> f t
type Lens' s a = Lens s s a a

lens :: (s -> a) -> (s -> a -> s) -> Lens' s a
lens sa sbt afb s = sbt s `fmap` afb (sa s)
{-# INLINE lens #-}

