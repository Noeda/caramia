{-# LANGUAGE NoImplicitPrelude, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable, StandaloneDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal context matters.

module Graphics.Caramia.Context.Internal
    ( Context(..)
    , ContextState()
    , coerceContext
    , contextState
    , unsafeResumeContext )
    where

import Control.Monad.Catch
import Control.Monad.Fix
import Control.Monad.IO.Class
import Control.Monad.Reader
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude
import Unsafe.Coerce

-- | Most Caramia operations need to happen in a `Context`.
--
-- Context enforces some invariants:
--
--   * Computation within `Context` is executed in the same thread where
--     the context was created. This ensures OpenGL functions won't be
--     executed in the wrong thread.
--
--   * Resources created in a `Context` won't escape. (This is
--     enforced in `giveContext` type signature).
--
-- You can run raw OpenGL functions within context within certain limitations,
-- if Caramia doesn't provide something you need.
-- Look at the internal FlextGL modules for raw OpenGL functions that work
-- directly in `Context` monad (e.g.
-- @Graphics.Caramia.Internal.FlextGLReader@).
newtype Context s a = Context (OpenGL a)
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
deriving instance MonadReader Scope (Context s)

-- | Encapsulates the state of `Context`.
newtype ContextState s = ContextState Scope
                         deriving ( Typeable )

-- | Returns a context state that can be used to resume a context.
contextState :: Context s (ContextState s)
contextState = ContextState <$> ask

-- | Unsafely unwraps a context to `IO`.
--
-- You can use this to go back into `Context` monad in case you have been
-- forced into `IO` with no other way to go back. Use `contextState` to get the
-- state.
--
-- The same `ContextState` can be used as many times as you want, anywhere you
-- want as long as you follow the invariants of `Context`. That is, it is
-- perfectly okay to call `contextState` once during start and then using that
-- same state in every `unsafeResumeContext` you ever do afterwards.
--
-- This is unsafe because it can be used to break invariants of `Context` (see
-- `Context`).
unsafeResumeContext :: ContextState s -> Context s a -> IO a
unsafeResumeContext (ContextState gl) (Context action) =
    runOpenGL gl action

-- | Coerces a `Context` value to another. Safe and useful to work around
-- problematic type system quirks.
coerceContext :: Context s1 a -> Context s2 a
coerceContext = unsafeCoerce

