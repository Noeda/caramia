{-# LANGUAGE RecordWildCards, NoImplicitPrelude, LambdaCase #-}
{-# LANGUAGE DeriveDataTypeable, MultiWayIf #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Graphics.Caramia.Texture.Internal where

import Control.Monad.Catch
import Control.Monad.IO.Class
import qualified Graphics.Caramia.Buffer.Internal as Buf
import Graphics.Caramia.ImageFormats
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.OpenGLResource
import Graphics.Caramia.Prelude
import Graphics.Caramia.Resource

data Texture = Texture
    { resource :: !(Resource Texture_)
    , ordIndex :: !Unique
    , viewSpecification :: !TextureSpecification }
    deriving ( Typeable )

-- | If you use `finalize`, be careful of any resource that might refer to the
-- texture.
instance OpenGLResource GLuint Texture where
    getRaw tex = do
        Texture_ name <- getRaw (WrappedOpenGLResource $ resource tex)
        return name
    touch tex = touch (WrappedOpenGLResource $ resource tex)
    finalize tex = finalize (WrappedOpenGLResource $ resource tex)

newtype Texture_ = Texture_ GLuint

-- | The type of a texture unit.
--
-- The minimum valid value is 0 and maximum is implementation dependant but
-- in OpenGL at least 48 units will work at the same time in shaders.
type TextureUnit = Int

instance Eq Texture where
    tex1 == tex2 = resource tex1 == resource tex2

instance Ord Texture where
    tex1 `compare` tex2 = ordIndex tex1 `compare` ordIndex tex2

-- | Specification on what the texture should be like.
--
-- Use `textureSpecification` and set at least `topology` and `imageFormat`.
-- Future minor versions remain compatible if you use `textureSpecification`
-- instead of the constructor directly.
data TextureSpecification = TextureSpecification
    { topology     :: Topology
    , imageFormat  :: ImageFormat
    , mipmapLevels :: Int -- ^ How many mipmap levels including the base
                          --  level? Must be at least 1.
                          --
                          --  Ignored and not evaluated for multisampling
                          --  textures.
    }
    deriving ( Eq, Typeable )

-- | Specifies a topology of a texture.
data Topology =
    Tex1D { width1D  :: !Int }
  | Tex2D { width2D  :: !Int
          , height2D :: !Int }
  | Tex3D { width3D  :: !Int
          , height3D :: !Int
          , depth3D  :: !Int }
  | Tex1DArray
          { width1DArray :: !Int
          , layers1D :: !Int }
  | Tex2DArray
          { width2DArray :: !Int
          , height2DArray :: !Int
          , layers2D :: !Int }
  | Tex2DMultisample
          { width2DMS :: !Int
          , height2DMS :: !Int
          , samples2DMS :: !Int
          , fixedSampleLocations2DMS :: !Bool }
  -- ^ Multisampling is available if OpenGL version >= 3.2 or
  -- `GL_ARB_texture_multisample` is available.
  | Tex2DMultisampleArray
          { width2DMSArray :: !Int
          , height2DMSArray :: !Int
          , layers2DMS :: !Int
          , samples2DMSArray :: !Int
          , fixedSampleLocations2DMSArray :: !Bool }
  | TexCube { widthCube  :: Int }
  | TexBuffer { texBuffer :: !Buf.Buffer }
    -- ^ Buffer textures, see
    -- <https://www.opengl.org/wiki/Buffer_Texture>
    --
    -- Available if OpenGL version >= 3.1 or
    -- `GL_ARB_texture_buffer_object` is available.
  deriving ( Eq, Show, Typeable )

withBinding :: (MonadIO m, MonadMask m) => GLenum -> GLenum -> GLuint -> m a -> m a
withBinding tex tex_binding tex_name action = do
    old <- gi tex_binding
    finally
        (glBindTexture tex tex_name >>
         action)
        (glBindTexture tex old)

-- | Given a bind location (such as GL_TEXTURE_3D), returns the query enum that
-- retrieves the current binding from glGetIntegerv (such as
-- GL_TEXTURE_BINDING_3D).
bindingQueryPoint :: GLenum -> GLenum
bindingQueryPoint x =
    if | x == GL_TEXTURE_1D -> GL_TEXTURE_BINDING_1D
       | x == GL_TEXTURE_2D -> GL_TEXTURE_BINDING_2D
       | x == GL_TEXTURE_3D -> GL_TEXTURE_BINDING_3D
       | x == GL_TEXTURE_1D_ARRAY -> GL_TEXTURE_BINDING_1D_ARRAY
       | x == GL_TEXTURE_2D_ARRAY -> GL_TEXTURE_BINDING_2D_ARRAY
       | x == GL_TEXTURE_2D_MULTISAMPLE -> GL_TEXTURE_BINDING_2D_MULTISAMPLE
       | x == GL_TEXTURE_2D_MULTISAMPLE_ARRAY -> GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
       | x == GL_TEXTURE_CUBE_MAP -> GL_TEXTURE_BINDING_CUBE_MAP
       | x == GL_TEXTURE_BUFFER -> GL_TEXTURE_BINDING_BUFFER
       | otherwise ->
           error $ "bindingQueryPoint: unknown texture target: " <> show x

getTopologyBindPoints :: Topology -> (GLenum, GLenum)
getTopologyBindPoints = \case
    Tex1D {..} -> (GL_TEXTURE_1D, GL_TEXTURE_BINDING_1D)
    Tex2D {..} -> (GL_TEXTURE_2D, GL_TEXTURE_BINDING_2D)
    Tex3D {..} -> (GL_TEXTURE_3D, GL_TEXTURE_BINDING_3D)
    Tex1DArray {..} -> (GL_TEXTURE_1D_ARRAY, GL_TEXTURE_BINDING_1D_ARRAY)
    Tex2DArray {..} -> (GL_TEXTURE_2D_ARRAY, GL_TEXTURE_BINDING_2D_ARRAY)
    Tex2DMultisample {..} ->
        (GL_TEXTURE_2D_MULTISAMPLE
        ,GL_TEXTURE_BINDING_2D_MULTISAMPLE)
    Tex2DMultisampleArray {..} ->
        (GL_TEXTURE_2D_MULTISAMPLE_ARRAY
        ,GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY)
    TexCube {..} ->
        (GL_TEXTURE_CUBE_MAP
        ,GL_TEXTURE_BINDING_CUBE_MAP)
    TexBuffer {} ->
        (GL_TEXTURE_BUFFER
        ,GL_TEXTURE_BINDING_BUFFER)

withBindingByTopology :: (MonadIO m, MonadMask m) => Texture -> (GLenum -> m a) -> m a
withBindingByTopology tex action =
    withResource (resource tex) $ \(Texture_ name) ->
        let (bind_target, bind_query) = getTopologyBindPoints topo
         in withBinding bind_target bind_query name $ action bind_target
  where
    topo = topology $ viewSpecification tex

withTextureBinding :: (MonadIO m, MonadMask m) => Texture -> TextureUnit -> m a -> m a
withTextureBinding tex unit action = do
    old_active <- gi GL_ACTIVE_TEXTURE
    glActiveTexture (GL_TEXTURE0 + fromIntegral unit)
    finally (withBindingByTopology tex $ const action) $
        glActiveTexture old_active

