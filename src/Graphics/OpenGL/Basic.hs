module Graphics.OpenGL.Basic (
	  module Graphics.OpenGL.Types

	, Scope
	, HasScope(..)
	, OpenGL
	, GLLoader

	-- * OpenGL Initialization
	, initGL

	-- * Convenience Functions
	, runGL
	, ifM
	, unlessM
) where

import Control.Monad
import Graphics.OpenGL.Internal.Scope
import Graphics.OpenGL.Types

type OpenGL m = ReaderT Scope m

-- | Load the OpenGL functions and query available extensions.
--
-- A valid OpenGL context must be made current before calling this function.
-- The given function is used to load the OpenGL functions, which is typically
-- provided by your windowing utility.
--
-- The scope is /only/ valid for the context it was initialized in. Any
-- attempt to use it with other contexts is undefined behaviour.
initGL :: GLLoader -> IO Scope
initGL = initScope

-- | Run the given sequence of OpenGL commands with the given scope.
runGL :: e -> ReaderT e m a -> m a
runGL = flip runReaderT

-- | Run the monadic action if the condition is met.
ifM :: Monad m => m Bool -> m () -> m ()
ifM c m = do { c' <- c; when c' m }

-- | Run the monadic action if the condition is not met.
unlessM :: Monad m => m Bool -> m () -> m ()
unlessM c m = do { c' <- c; when (not c') m }
