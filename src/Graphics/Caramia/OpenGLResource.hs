{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Graphics.Caramia.OpenGLResource
    ( OpenGLResource(..) )
    where

import Control.Monad.IO.Class

-- | All OpenGL resources implement this typeclass.
--
-- The resources have an inner type, usually a `GLuint` but not always.
--
-- If you work with raw OpenGL resources, you may need to use `touch` to make
-- sure the resource is not garbage collected prematurely.
class OpenGLResource innertype a | a -> innertype where
    -- | Returns the raw OpenGL type.
    getRaw :: MonadIO m => a -> m innertype

    -- | Guarantees that the resource has not been garbage collected at the
    -- point this function is invoked.
    touch :: MonadIO m => a -> m ()

    -- | Promptly finalizes the resource.
    --
    -- This can be unsafe; see `Graphics.Caramia.Resource.finalizeNow`.
    finalize :: MonadIO m => a -> m ()

