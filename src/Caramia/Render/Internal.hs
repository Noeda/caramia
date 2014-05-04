{-# LANGUAGE RecordWildCards #-}

module Caramia.Render.Internal where

import Control.Applicative
import Caramia.Internal.OpenGLCApi
import Data.Typeable
import Data.Word
import Control.Exception

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
comparisonFuncToConstant Never = gl_NEVER
comparisonFuncToConstant Less = gl_LESS
comparisonFuncToConstant Equal = gl_EQUAL
comparisonFuncToConstant LEqual = gl_LEQUAL
comparisonFuncToConstant Greater = gl_GREATER
comparisonFuncToConstant NotEqual = gl_NOTEQUAL
comparisonFuncToConstant GEqual = gl_GEQUAL
comparisonFuncToConstant Always = gl_ALWAYS

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
stencilOpToConstant Keep = gl_KEEP
stencilOpToConstant Zero = gl_ZERO
stencilOpToConstant Replace = gl_REPLACE
stencilOpToConstant Increment = gl_INCR
stencilOpToConstant IncrementAndWrap = gl_INCR_WRAP
stencilOpToConstant Decrease = gl_DECR
stencilOpToConstant DecreaseAndWrap = gl_DECR_WRAP
stencilOpToConstant Invert = gl_INVERT

withStencilFunc :: ComparisonFunc
                -> StencilOp
                -> StencilOp
                -> StencilOp
                -> Word32
                -> Word32
                -> IO a
                -> IO a
withStencilFunc func op1 op2 op3 ref mask action = do
    old_func <- gi gl_STENCIL_FUNC
    old_ref <- gi gl_STENCIL_REF
    old_mask <- gi gl_STENCIL_VALUE_MASK
    old_op1 <- gi gl_STENCIL_FAIL
    old_op2 <- gi gl_STENCIL_PASS_DEPTH_FAIL
    old_op3 <- gi gl_STENCIL_PASS_DEPTH_PASS
    finally withOp
            (glStencilFunc old_func (fromIntegral old_ref) old_mask *>
             glStencilOp old_op1 old_op2 old_op3)
  where
    sop = glStencilOp (stencilOpToConstant op1)
                      (stencilOpToConstant op2)
                      (stencilOpToConstant op3) *>
          action

    withOp = do
        glStencilFunc (comparisonFuncToConstant func)
                      (fromIntegral ref)
                      (fromIntegral mask)
        sop

withDepthFunc :: ComparisonFunc -> Bool -> IO a -> IO a
withDepthFunc func write_depth action = do
    old_depth_func <- gi gl_DEPTH_FUNC
    old_depth_write <- gi gl_DEPTH_WRITEMASK
    finally (glDepthFunc (comparisonFuncToConstant func) *>
             glDepthMask
                 (fromIntegral $ if write_depth then gl_TRUE else gl_FALSE) *>
             action)
            (glDepthFunc old_depth_func *>
             glDepthMask (fromIntegral old_depth_write))

withFragmentPassTests :: FragmentPassTests -> IO a -> IO a
withFragmentPassTests (FragmentPassTests {..}) action = do
    was_it_enabled <- glIsEnabled gl_DEPTH_TEST
    finally
        (case depthTest of
             Nothing -> glDisable gl_DEPTH_TEST *> next
             Just dt -> glEnable gl_DEPTH_TEST *>
                        withDepthFunc dt writeDepth next) $
        if was_it_enabled == fromIntegral gl_TRUE
          then glEnable gl_DEPTH_TEST
          else glDisable gl_DEPTH_TEST
  where
    next = do
        was_it_enabled <- glIsEnabled gl_STENCIL_TEST
        finally
            (case stencilTest of
                 Nothing -> glDisable gl_STENCIL_TEST *> next'
                 Just st -> glEnable gl_STENCIL_TEST *>
                            withStencilFunc st
                                            failStencilOp
                                            depthFailStencilOp
                                            depthPassStencilOp
                                            stencilReference
                                            stencilMask
                                            next') $ do
            if was_it_enabled == fromIntegral gl_TRUE
              then glEnable gl_STENCIL_TEST
              else glDisable gl_STENCIL_TEST

    next' = action

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
  }

-- | Returns the default fragment pass tests.
--
-- Neither depth or stencil test is enabled. `writeDepth` is set to true but
-- that value is only used if you specify with depth test to use.
--
-- All stencil operations are set to `Keep`.
defaultFragmentPassTests :: FragmentPassTests
defaultFragmentPassTests = FragmentPassTests
    { depthTest = Nothing
    , writeDepth = True
    , stencilTest = Nothing
    , stencilReference = 0
    , stencilMask = 0xffffffff
    , failStencilOp = Keep
    , depthFailStencilOp = Keep
    , depthPassStencilOp = Keep }

-- TODO: separate stencil tests for backsides of triangles
-- (glStencilOpSeparate)


