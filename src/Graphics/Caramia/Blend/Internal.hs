{-# LANGUAGE RecordWildCards, NoImplicitPrelude, DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}

module Graphics.Caramia.Blend.Internal where

import Control.Monad.Catch
import Control.Monad.IO.Class
import Data.Data ( Data )
import Foreign
import GHC.Generics ( Generic )
import Graphics.Caramia.Color
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Prelude

-- | Describes which equation to use in blending.
--
-- See `glBlendEquation` in OpenGL documentation.
data BlendEquation =
    BEAdd
  | BESubtract
  | BEReverseSubtract
  | BEMin
  | BEMax
  deriving ( Eq, Ord, Show, Read, Typeable, Enum, Data, Generic )

-- | Describes the arithmetic to use in blending.
--
-- See `glBlendFunc` in OpenGL documentation.
data BlendFunc =
    BFZero
  | BFOne
  | BFSrcColor
  | BFOneMinusSrcColor
  | BFDstColor
  | BFOneMinusDstColor
  | BFSrcAlpha
  | BFOneMinusSrcAlpha
  | BFDstAlpha
  | BFOneMinusDstAlpha
  | BFConstantColor
  | BFOneMinusConstantColor
  | BFConstantAlpha
  | BFOneMinusConstantAlpha
  | BFSrcAlphaSaturate
  deriving ( Eq, Ord, Show, Read, Typeable, Enum, Data, Generic )

toConstantBE :: BlendEquation -> GLenum
toConstantBE BEAdd = GL_FUNC_ADD
toConstantBE BESubtract = GL_FUNC_SUBTRACT
toConstantBE BEReverseSubtract = GL_FUNC_REVERSE_SUBTRACT
toConstantBE BEMin = GL_MIN
toConstantBE BEMax = GL_MAX

toConstantBF :: BlendFunc -> GLenum
toConstantBF BFZero = GL_ZERO
toConstantBF BFOne = GL_ONE
toConstantBF BFSrcColor = GL_SRC_COLOR
toConstantBF BFOneMinusSrcColor = GL_ONE_MINUS_SRC_COLOR
toConstantBF BFDstColor = GL_DST_COLOR
toConstantBF BFOneMinusDstColor = GL_ONE_MINUS_DST_COLOR
toConstantBF BFSrcAlpha = GL_SRC_ALPHA
toConstantBF BFOneMinusSrcAlpha = GL_ONE_MINUS_SRC_ALPHA
toConstantBF BFDstAlpha = GL_DST_ALPHA
toConstantBF BFOneMinusDstAlpha = GL_ONE_MINUS_DST_ALPHA
toConstantBF BFConstantColor = GL_CONSTANT_COLOR
toConstantBF BFOneMinusConstantColor = GL_ONE_MINUS_CONSTANT_COLOR
toConstantBF BFConstantAlpha = GL_CONSTANT_ALPHA
toConstantBF BFOneMinusConstantAlpha = GL_ONE_MINUS_CONSTANT_ALPHA
toConstantBF BFSrcAlphaSaturate = GL_SRC_ALPHA_SATURATE

-- | Captures the blending parameters.
data BlendSpec = BlendSpec
    { alphaEquation :: !BlendEquation
    , colorEquation :: !BlendEquation
    , srcColorFunc  :: !BlendFunc
    , srcAlphaFunc  :: !BlendFunc
    , dstColorFunc  :: !BlendFunc
    , dstAlphaFunc  :: !BlendFunc
    , blendColor    :: !Color }
    deriving ( Eq, Ord, Show, Read, Typeable, Data, Generic )

setBlendings :: MonadIO m => BlendSpec -> m ()
setBlendings (BlendSpec{..}) = do
    glBlendFuncSeparate (toConstantBF srcColorFunc)
                        (toConstantBF dstColorFunc)
                        (toConstantBF srcAlphaFunc)
                        (toConstantBF dstAlphaFunc)
    glBlendEquationSeparate (toConstantBE colorEquation)
                            (toConstantBE alphaEquation)
    glBlendColor (viewRed blendColor)
                 (viewGreen blendColor)
                 (viewBlue blendColor)
                 (viewAlpha blendColor)

withBlendings :: (MonadIO m, MonadMask m)
              => BlendSpec
              -> m a
              -> m a
withBlendings spec@(BlendSpec {..}) action = do
    old_be_color <- gi GL_BLEND_EQUATION_RGB
    old_be_alpha <- gi GL_BLEND_EQUATION_ALPHA
    old_src_color <- gi GL_BLEND_SRC_RGB
    old_src_alpha <- gi GL_BLEND_SRC_ALPHA
    old_dst_color <- gi GL_BLEND_DST_RGB
    old_dst_alpha <- gi GL_BLEND_DST_ALPHA
    (r, g, b, a) <- liftIO $ allocaArray 4 $ \color_ptr -> do
        glGetFloatv GL_BLEND_COLOR color_ptr
        r <- peekElemOff color_ptr 0
        g <- peekElemOff color_ptr 1
        b <- peekElemOff color_ptr 2
        a <- peekElemOff color_ptr 3
        return (r, g, b, a)
    finally (setBlendings spec >> action) $ do
        glBlendColor r g b a
        glBlendFuncSeparate old_src_color
                            old_dst_color
                            old_src_alpha
                            old_dst_alpha
        glBlendEquationSeparate old_be_color
                                old_be_alpha


