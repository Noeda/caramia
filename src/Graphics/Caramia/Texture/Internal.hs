{-# LANGUAGE RecordWildCards, NoImplicitPrelude, LambdaCase #-}
{-# LANGUAGE DeriveDataTypeable, MultiWayIf #-}

module Graphics.Caramia.Texture.Internal where

import Graphics.Caramia.Prelude

import Graphics.Caramia.Resource
import Graphics.Caramia.Internal.OpenGLCApi
import qualified Graphics.Caramia.Buffer.Internal as Buf
import Graphics.Caramia.ImageFormats
import System.IO.Unsafe
import Control.Monad.IO.Class
import Control.Monad.Catch

data Texture = Texture
    { resource :: !(Resource Texture_)
    , ordIndex :: !Int
    , viewSpecification :: !TextureSpecification }
    deriving ( Typeable )

newtype Texture_ = Texture_ GLuint

-- | The type of a texture unit.
--
-- The minimum valid value is 0 and maximum is implementation dependant but
-- in OpenGL at least 48 units will work at the same time in shaders.
type TextureUnit = Int

ordIndices :: IORef Int
ordIndices = unsafePerformIO $ newIORef 0
{-# NOINLINE ordIndices #-}

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
  deriving ( Eq, Show, Typeable )

withBinding :: (MonadIO m, MonadMask m) => GLenum -> GLenum -> GLuint -> m a -> m a
withBinding tex tex_binding tex_name action = do
    old <- gi tex_binding
    finally
        (glBindTexture tex tex_name >>
         action)
        (glBindTexture tex old)

-- | Given a bind location (such as gl_TEXTURE_3D), returns the query enum that
-- retrieves the current binding from glGetIntegerv (such as
-- gl_TEXTURE_BINDING_3D).
bindingQueryPoint :: GLenum -> GLenum
bindingQueryPoint x =
    if | x == gl_TEXTURE_1D -> gl_TEXTURE_BINDING_1D
       | x == gl_TEXTURE_2D -> gl_TEXTURE_BINDING_2D
       | x == gl_TEXTURE_3D -> gl_TEXTURE_BINDING_3D
       | x == gl_TEXTURE_1D_ARRAY -> gl_TEXTURE_BINDING_1D_ARRAY
       | x == gl_TEXTURE_2D_ARRAY -> gl_TEXTURE_BINDING_2D_ARRAY
       | x == gl_TEXTURE_2D_MULTISAMPLE -> gl_TEXTURE_BINDING_2D_MULTISAMPLE
       | x == gl_TEXTURE_2D_MULTISAMPLE_ARRAY -> gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
       | x == gl_TEXTURE_CUBE_MAP -> gl_TEXTURE_BINDING_CUBE_MAP
       | x == gl_TEXTURE_BUFFER -> gl_TEXTURE_BINDING_BUFFER
       | otherwise ->
           error $ "bindingQueryPoint: unknown texture target: " <> show x

getTopologyBindPoints :: Topology -> (GLenum, GLenum)
getTopologyBindPoints = \case
    Tex1D {..} -> (gl_TEXTURE_1D, gl_TEXTURE_BINDING_1D)
    Tex2D {..} -> (gl_TEXTURE_2D, gl_TEXTURE_BINDING_2D)
    Tex3D {..} -> (gl_TEXTURE_3D, gl_TEXTURE_BINDING_3D)
    Tex1DArray {..} -> (gl_TEXTURE_1D_ARRAY, gl_TEXTURE_BINDING_1D_ARRAY)
    Tex2DArray {..} -> (gl_TEXTURE_2D_ARRAY, gl_TEXTURE_BINDING_2D_ARRAY)
    Tex2DMultisample {..} ->
        (gl_TEXTURE_2D_MULTISAMPLE
        ,gl_TEXTURE_BINDING_2D_MULTISAMPLE)
    Tex2DMultisampleArray {..} ->
        (gl_TEXTURE_2D_MULTISAMPLE_ARRAY
        ,gl_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY)
    TexCube {..} ->
        (gl_TEXTURE_CUBE_MAP
        ,gl_TEXTURE_BINDING_CUBE_MAP)
    TexBuffer {} ->
        (gl_TEXTURE_BUFFER
        ,gl_TEXTURE_BINDING_BUFFER)

withBindingByTopology :: (MonadIO m, MonadMask m) => Texture -> (GLenum -> m a) -> m a
withBindingByTopology tex action =
    withResource (resource tex) $ \(Texture_ name) ->
        let (bind_target, bind_query) = getTopologyBindPoints topo
         in withBinding bind_target bind_query name $ action bind_target
  where
    topo = topology $ viewSpecification tex

withTextureBinding :: (MonadIO m, MonadMask m) => Texture -> TextureUnit -> m a -> m a
withTextureBinding tex unit action = do
    old_active <- gi gl_ACTIVE_TEXTURE
    glActiveTexture (gl_TEXTURE0 + fromIntegral unit)
    finally (withBindingByTopology tex $ const action) $
        glActiveTexture old_active

