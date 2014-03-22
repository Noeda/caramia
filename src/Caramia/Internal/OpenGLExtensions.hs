-- | This module tries to make it super simple to check if some OpenGL
-- extension is around...and do it with relatively small runtime cost.

module Caramia.Internal.OpenGLExtensions
    ( has_GL_EXT_direct_state_access
    , has_GL_ARB_separate_shader_objects
    , has_GL_ARB_buffer_storage
    , has_GL_KHR_debug
    , whenExt )
    where

import Caramia.Context

import Graphics.Rendering.OpenGL.Raw.Core32
import Foreign.Marshal.Alloc
import Foreign.Storable
import Foreign.C.String
import Foreign.Ptr
import Data.Foldable
import Data.Typeable
import Control.Applicative
import Control.Monad.Trans.State.Strict
import Control.Monad.IO.Class

data ExtensionTable = ExtensionTable
    { has_GL_EXT_direct_state_access_ :: !Bool
    , has_GL_ARB_separate_shader_objects_ :: !Bool
    , has_GL_ARB_buffer_storage_ :: !Bool
    , has_GL_KHR_debug_ :: !Bool }
    deriving ( Eq, Ord, Show, Read, Typeable )

emptyExtensionTable :: ExtensionTable
emptyExtensionTable = ExtensionTable
    { has_GL_EXT_direct_state_access_ = False
    , has_GL_ARB_separate_shader_objects_ = False
    , has_GL_ARB_buffer_storage_ = False
    , has_GL_KHR_debug_ = False }

getExtensionTable :: IO ExtensionTable
getExtensionTable =
    retrieveContextLocalData $ do
        num_extensions <- alloca $ \num_ptr ->
            glGetIntegerv gl_NUM_EXTENSIONS num_ptr *> peek num_ptr

        flip execStateT emptyExtensionTable $
            for_ [0..num_extensions-1] $ \ext_num -> do
                str <- liftIO $
                    peekCAString =<< castPtr <$>
                                     glGetStringi gl_EXTENSIONS
                                                  (fromIntegral ext_num)
                handle str
  where
    handle "GL_EXT_direct_state_access" =
        modify (\old -> old { has_GL_EXT_direct_state_access_ = True })
    handle "GL_ARB_separate_shader_objects" =
        modify (\old -> old { has_GL_ARB_separate_shader_objects_ = True })
    handle "GL_ARB_buffer_storage" =
        modify (\old -> old { has_GL_ARB_buffer_storage_ = True })
    handle "GL_KHR_debug" =
        modify (\old -> old { has_GL_KHR_debug_ = True })

    handle _ = return ()

has_GL_EXT_direct_state_access :: IO Bool
has_GL_EXT_direct_state_access =
    has_GL_EXT_direct_state_access_ <$> getExtensionTable
{-# INLINE has_GL_EXT_direct_state_access #-}

has_GL_ARB_separate_shader_objects :: IO Bool
has_GL_ARB_separate_shader_objects =
    has_GL_ARB_separate_shader_objects_ <$> getExtensionTable
{-# INLINE has_GL_ARB_separate_shader_objects #-}

has_GL_ARB_buffer_storage :: IO Bool
has_GL_ARB_buffer_storage =
    has_GL_ARB_buffer_storage_ <$> getExtensionTable
{-# INLINE has_GL_ARB_buffer_storage #-}

has_GL_KHR_debug :: IO Bool
has_GL_KHR_debug =
    has_GL_KHR_debug_ <$> getExtensionTable
{-# INLINE has_GL_KHR_debug #-}

whenExt :: IO Bool -> IO a -> IO a -> IO a
whenExt ext_check first second = do
    result <- ext_check
    if result then first else second
{-# INLINE whenExt #-}

