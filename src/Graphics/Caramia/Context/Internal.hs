{-# LANGUAGE NoImplicitPrelude, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable, StandaloneDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Graphics.Caramia.Context.Internal
    ( Context(..)
    , contextState
    , unsafeResumeContext
    , fglC
    , askFlextGL
    , liftFlextGLM )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.OpenGLCApi
import Control.Monad.Catch
import Control.Monad.Fix
import Control.Monad.IO.Class
import Control.Monad.Reader

newtype Context s a = Context (FlextGLM a)
                      deriving ( Functor
                               , Applicative
                               , Monad
                               , MonadIO
                               , MonadFix
                               , MonadThrow
                               , MonadMask
                               , MonadCatch
                               , Typeable )

-- | This allows you to use an escape hatch and run any OpenGL function.
deriving instance MonadReader FlextGL (Context s)

newtype ContextState s = ContextState FlextGL

askFlextGL :: Context s FlextGL
askFlextGL = liftFlextGLM askGL

fglC :: (FlextGL -> IO a) -> Context s a
fglC = liftFlextGLM . fgl

contextState :: Context s (ContextState s)
contextState = ContextState <$> liftFlextGLM askGL

-- | Unsafely unwraps a context to `IO`.
--
-- You can use this to go back into `Context` monad in case you have been
-- forced into `IO` with no other way to go back.
unsafeResumeContext :: ContextState s -> Context s a -> IO a
unsafeResumeContext (ContextState fgl) (Context action) =
    runFlextGLM fgl action

-- | Lifts a `FlextGLM` action to `Context`.
--
-- This unsafe! It will happily break all the invariants concerning `Context`.
liftFlextGLM :: FlextGLM a -> Context s a
liftFlextGLM = Context

-- Invariants regarding Context:
--
-- Any IO computation running inside Context will have the same ThreadId for
-- the duration of the Context.
--


