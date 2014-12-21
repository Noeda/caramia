{-# LANGUAGE RecordWildCards, NoImplicitPrelude, DeriveDataTypeable #-}

module Graphics.Caramia.Render.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Internal.OpenGLCApi
import Control.Monad.IO.Class
import Control.Monad.Catch

-- | A comparison function. Incoming value is compared with this function to
-- the existing value.
--
-- This can be used with depth and stencil tests.
--
-- See @ glDepthFunc @ from OpenGL specification or man pages for more detailed
-- explanation.
data ComparisonFunc =
    Never
  | Less
  | Equal
  | LEqual
  | Greater
  | NotEqual
  | GEqual
  | Always
  deriving ( Eq, Ord, Show, Read, Typeable )

comparisonFuncToConstant :: ComparisonFunc -> GLenum
comparisonFuncToConstant Never = GL_NEVER
comparisonFuncToConstant Less = GL_LESS
comparisonFuncToConstant Equal = GL_EQUAL
comparisonFuncToConstant LEqual = GL_LEQUAL
comparisonFuncToConstant Greater = GL_GREATER
comparisonFuncToConstant NotEqual = GL_NOTEQUAL
comparisonFuncToConstant GEqual = GL_GEQUAL
comparisonFuncToConstant Always = GL_ALWAYS

-- | Stencil buffer operations.
--
-- See @ glStencilOp @ for explanations of each constructor.
data StencilOp =
    Keep
  | Zero
  | Replace
  -- ^ This one replaces the old value in the stencil buffer with the given
  -- reference value and ANDs the result with mask.
  | Increment
  | IncrementAndWrap
  | Decrease
  | DecreaseAndWrap
  | Invert
  deriving ( Eq, Ord, Show, Read, Typeable )

stencilOpToConstant :: StencilOp -> GLenum
stencilOpToConstant Keep = GL_KEEP
stencilOpToConstant Zero = GL_ZERO
stencilOpToConstant Replace = GL_REPLACE
stencilOpToConstant Increment = GL_INCR
stencilOpToConstant IncrementAndWrap = GL_INCR_WRAP
stencilOpToConstant Decrease = GL_DECR
stencilOpToConstant DecreaseAndWrap = GL_DECR_WRAP
stencilOpToConstant Invert = GL_INVERT

setStencilFunc :: MonadIO m
               => ComparisonFunc
               -> StencilOp
               -> StencilOp
               -> StencilOp
               -> Word32
               -> Word32
               -> m ()
setStencilFunc func op1 op2 op3 ref mask = do
    glStencilFunc (comparisonFuncToConstant func)
                  (fromIntegral ref)
                  (fromIntegral mask)
    glStencilOp (stencilOpToConstant op1)
                (stencilOpToConstant op2)
                (stencilOpToConstant op3)
{-# INLINE setStencilFunc #-}

withStencilFunc :: (MonadIO m, MonadMask m)
                => ComparisonFunc
                -> StencilOp
                -> StencilOp
                -> StencilOp
                -> Word32
                -> Word32
                -> m a
                -> m a
withStencilFunc func op1 op2 op3 ref mask action = do
    old_func <- gi GL_STENCIL_FUNC
    old_ref <- gi GL_STENCIL_REF
    old_mask <- gi GL_STENCIL_VALUE_MASK
    old_op1 <- gi GL_STENCIL_FAIL
    old_op2 <- gi GL_STENCIL_PASS_DEPTH_FAIL
    old_op3 <- gi GL_STENCIL_PASS_DEPTH_PASS
    finally (setStencilFunc func op1 op2 op3 ref mask >> action)
            (do
                 glStencilFunc old_func (fromIntegral old_ref) old_mask
                 glStencilOp old_op1 old_op2 old_op3)

withCulling :: (MonadIO m, MonadMask m) => Culling -> m a -> m a
withCulling culling action = do
    old_culling <- gi GL_CULL_FACE_MODE
    was_enabled <- glIsEnabled GL_CULL_FACE
    finally (setCulling culling >> action)
            (liftIO $ do
                 if was_enabled == GL_TRUE
                     then glEnable GL_CULL_FACE
                     else glDisable GL_CULL_FACE
                 glCullFace old_culling)

setCulling :: (MonadIO m, MonadMask m) => Culling -> m ()
setCulling NoCulling = glDisable GL_CULL_FACE
setCulling x = mask_ $
    glEnable GL_CULL_FACE >>
    glCullFace (cullingToConstant x)

setDepthFunc :: MonadIO m => ComparisonFunc -> Bool -> m ()
setDepthFunc func write_depth = do
    glDepthFunc (comparisonFuncToConstant func)
    glDepthMask (if write_depth then GL_TRUE else GL_FALSE)

withDepthFunc :: (MonadIO m, MonadMask m) => ComparisonFunc -> Bool -> m a -> m a
withDepthFunc func write_depth action = do
    old_depth_func <- gi GL_DEPTH_FUNC
    old_depth_write <- gi GL_DEPTH_WRITEMASK
    finally (setDepthFunc func write_depth >> action)
            (do
                 glDepthFunc old_depth_func
                 glDepthMask (fromIntegral old_depth_write))

setFragmentPassTests :: (MonadIO m, MonadMask m) => FragmentPassTests -> m ()
setFragmentPassTests (FragmentPassTests {..}) = do
    case depthTest of
        Nothing -> glDisable GL_DEPTH_TEST
        Just dt -> glEnable GL_DEPTH_TEST >>
                   setDepthFunc dt writeDepth
    case stencilTest of
        Nothing -> glDisable GL_STENCIL_TEST
        Just st -> glEnable GL_STENCIL_TEST >>
                   setStencilFunc st
                                  failStencilOp
                                  depthFailStencilOp
                                  depthPassStencilOp
                                  stencilReference
                                  stencilMask
    setCulling cullFace

withFragmentPassTests :: (MonadIO m, MonadMask m) => FragmentPassTests -> m a -> m a
withFragmentPassTests (FragmentPassTests {..}) action = do
    was_it_enabled <- glIsEnabled GL_DEPTH_TEST
    finally
        (case depthTest of
             Nothing -> glDisable GL_DEPTH_TEST >> next
             Just dt -> glEnable GL_DEPTH_TEST >>
                        withDepthFunc dt writeDepth next) $
        if was_it_enabled == GL_TRUE
          then glEnable GL_DEPTH_TEST
          else glDisable GL_DEPTH_TEST
  where
    next = do
        was_it_enabled <- glIsEnabled GL_STENCIL_TEST
        finally
            (case stencilTest of
                 Nothing -> glDisable GL_STENCIL_TEST >> next'
                 Just st -> glEnable GL_STENCIL_TEST >>
                            withStencilFunc st
                                            failStencilOp
                                            depthFailStencilOp
                                            depthPassStencilOp
                                            stencilReference
                                            stencilMask
                                            next') $
            if was_it_enabled == GL_TRUE
              then glEnable GL_STENCIL_TEST
              else glDisable GL_STENCIL_TEST

    next' = withCulling cullFace action

data Culling =
    Back
  | Front
  | FrontAndBack  -- ^ This stops the drawing of any faces but points and lines
                  -- (or other non-facey like primitives) are drawn.
  | NoCulling
  deriving ( Eq, Ord, Show, Read, Typeable )

cullingToConstant :: Culling -> GLenum
cullingToConstant Back = GL_BACK
cullingToConstant Front = GL_FRONT
cullingToConstant FrontAndBack = GL_FRONT_AND_BACK
cullingToConstant NoCulling = 0

-- | Specifies the tests that are run on a fragment to decide if it should be
-- seen.
data FragmentPassTests = FragmentPassTests {
    depthTest :: !(Maybe ComparisonFunc)
  -- ^ Which depth test to use, if any?
  , writeDepth :: Bool
  -- ^ If depth test is specified, should we also update the depth buffer with
  -- new depth values? The depth buffer will not be written if `depthTest` is
  -- not specified regardless of the value in this field.
  , stencilTest :: !(Maybe ComparisonFunc)
  -- ^ Which stencil test to use, if any?
  , stencilReference :: !Word32
  , stencilMask      :: !Word32
  , failStencilOp      :: !StencilOp
  -- ^ What to do with the stencil buffer if stencil test fails.
  , depthFailStencilOp :: !StencilOp
  -- ^ What to do with the stencil buffer if stencil test passes but depth
  -- testing fails).
  , depthPassStencilOp :: !StencilOp
  -- ^ What to do with the stencil buffer if stencil and depth test passes, or
  -- if depth buffer is not present or depth test is disabled.
  , cullFace :: !Culling
  -- ^ What kind of face culling should we do.
  }
  deriving ( Eq, Ord, Show, Read, Typeable )

-- | Returns the default fragment pass tests.
--
-- Neither depth or stencil test is enabled. `writeDepth` is set to true but
-- that value is only used if you specify with depth test to use.
--
-- All stencil operations are set to `Keep`.
--
-- Culling is set to `Back`.
defaultFragmentPassTests :: FragmentPassTests
defaultFragmentPassTests = FragmentPassTests
    { depthTest = Nothing
    , writeDepth = True
    , stencilTest = Nothing
    , stencilReference = 0
    , stencilMask = 0xffffffff
    , failStencilOp = Keep
    , depthFailStencilOp = Keep
    , depthPassStencilOp = Keep
    , cullFace = Back }

-- TODO: separate stencil tests for backsides of triangles
-- (glStencilOpSeparate)


