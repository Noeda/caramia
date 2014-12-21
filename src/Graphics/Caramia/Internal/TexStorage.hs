-- | This module implements GL_ARB_texture_storage with
-- GL_EXT_direct_state_access in terms of glTexImageX calls.
--
-- The implementation is unlikely to be perfect but it should work for most
-- cases.

{-# LANGUAGE NoImplicitPrelude, MultiWayIf #-}

module Graphics.Caramia.Internal.TexStorage
    ( fakeTextureStorage1D
    , fakeTextureStorage2D
    , fakeTextureStorage3D )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Texture.Internal
import Graphics.GL.Ext.EXT.DirectStateAccess
import Graphics.GL.Ext.EXT.TextureCompressionS3tc
import Graphics.GL.Ext.EXT.TextureSRGB
import Control.Exception
import Foreign.Ptr

-- | glTextureStorage1D
fakeTextureStorage1D :: GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> IO ()
fakeTextureStorage1D texture target levels internalformat width =
    mask_ $ if gl_EXT_direct_state_access
            then dsaFakeTextureStorage1D
            else nodsaFakeTextureStorage1D
  where
    rec fun i w | i < levels = fun i w >>
                               rec fun (i+1) (max 1 $ w `div` 2)
                | otherwise = return ()

    dsaFakeTextureStorage1D = do
        rec (\i w -> do
            glTextureImage1DEXT texture
                                target
                                i
                                (fromIntegral internalformat)
                                w
                                0
                                (formatFromInternalFormat internalformat)
                                (typeFromInternalFormat internalformat)
                                nullPtr) 0 width
        glTextureParameteriEXT texture target GL_TEXTURE_MAX_LEVEL (levels-1)

    nodsaFakeTextureStorage1D = do
        old_tex <- gi $ bindingQueryPoint target
        glBindTexture target texture
        rec (\i w ->
                glTexImage1D target
                             i
                             (fromIntegral internalformat)
                             w
                             0
                             (formatFromInternalFormat internalformat)
                             (typeFromInternalFormat internalformat)
                             nullPtr) 0 width
        glTexParameteri target GL_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

-- | glTextureStorage2D
fakeTextureStorage2D :: GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> IO ()
fakeTextureStorage2D texture target levels internalformat width height =
    mask_ $ if gl_EXT_direct_state_access
            then dsaFakeTextureStorage2D
            else nodsaFakeTextureStorage2D
  where
    rec fun i w h | i < levels = fun i w h >>
                                 rec fun
                                     (i+1)
                                     (max 1 $ w `div` 2)
                                     (max 1 $ h `div` 2)
                  | otherwise = return ()

    dsaFakeTextureStorage2D = do
        rec (\i w h ->
            if target /= GL_TEXTURE_CUBE_MAP
              then glTextureImage2DEXT texture
                                    target
                                    i
                                    (fromIntegral internalformat)
                                    w
                                    h
                                    0
                                    (formatFromInternalFormat internalformat)
                                    (typeFromInternalFormat internalformat)
                                    nullPtr
              else for_ cubeSides $ \side ->
                glTextureImage2DEXT texture
                                    side
                                    i
                                    (fromIntegral internalformat)
                                    w
                                    h
                                    0
                                    (formatFromInternalFormat internalformat)
                                    (typeFromInternalFormat internalformat)
                                    nullPtr) 0 width height
        glTextureParameteriEXT texture target GL_TEXTURE_MAX_LEVEL (levels-1)

    nodsaFakeTextureStorage2D = do
        old_tex <- gi $ bindingQueryPoint target
        glBindTexture target texture
        rec (\i w h -> if target /= GL_TEXTURE_CUBE_MAP
                         then glTexImage2D target
                                i
                                (fromIntegral internalformat)
                                w
                                h
                                0
                                (formatFromInternalFormat internalformat)
                                (typeFromInternalFormat internalformat)
                                nullPtr
                         else for_ cubeSides $ \side ->
                                glTexImage2D side
                                    i
                                    (fromIntegral internalformat)
                                    w
                                    h
                                    0
                                    (formatFromInternalFormat internalformat)
                                    (typeFromInternalFormat internalformat)
                                    nullPtr)
                                    0 width height
        glTexParameteri target GL_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

cubeSides :: [GLenum]
cubeSides = [GL_TEXTURE_CUBE_MAP_POSITIVE_X
            ,GL_TEXTURE_CUBE_MAP_POSITIVE_Y
            ,GL_TEXTURE_CUBE_MAP_POSITIVE_Z
            ,GL_TEXTURE_CUBE_MAP_NEGATIVE_X
            ,GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
            ,GL_TEXTURE_CUBE_MAP_NEGATIVE_Z]

-- | glTextureStorage3D
fakeTextureStorage3D :: GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> GLsizei
                     -> IO ()
fakeTextureStorage3D texture target levels internalformat width height depth =
    mask_ $ if gl_EXT_direct_state_access
            then dsaFakeTextureStorage3D
            else nodsaFakeTextureStorage3D
  where
    rec fun i w h z | i < levels = fun i w h z >>
                                   rec fun
                                       (i+1)
                                       (max 1 $ w `div` 2)
                                       (max 1 $ h `div` 2)
                                       (max 1 $ z `div` 2)
                    | otherwise = return ()

    dsaFakeTextureStorage3D = do
        rec (\i w h z ->
            glTextureImage3DEXT texture
                                target
                                i
                                (fromIntegral internalformat)
                                w
                                h
                                z
                                0
                                (formatFromInternalFormat internalformat)
                                (typeFromInternalFormat internalformat)
                                nullPtr) 0 width height depth
        glTextureParameteriEXT texture target GL_TEXTURE_MAX_LEVEL (levels-1)

    nodsaFakeTextureStorage3D = do
        old_tex <- gi $ bindingQueryPoint target
        glBindTexture target texture
        rec (\i w h z -> glTexImage3D
                             target
                             i
                             (fromIntegral internalformat)
                             w
                             h
                             z
                             0
                             (formatFromInternalFormat internalformat)
                             (typeFromInternalFormat internalformat)
                             nullPtr) 0 width height depth
        glTexParameteri target GL_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

typeFromInternalFormat :: GLenum -> GLenum
typeFromInternalFormat x =
    if | x == GL_R8     -> GL_UNSIGNED_BYTE
       | x == GL_R8I    -> GL_BYTE
       | x == GL_R8UI   -> GL_UNSIGNED_BYTE
       | x == GL_R16    -> GL_UNSIGNED_SHORT
       | x == GL_R16I   -> GL_SHORT
       | x == GL_R16UI  -> GL_UNSIGNED_SHORT
       | x == GL_R16F   -> GL_FLOAT
       | x == GL_R32F   -> GL_FLOAT
       | x == GL_R32I   -> GL_INT
       | x == GL_R32UI  -> GL_UNSIGNED_INT
       | x == GL_RG8    -> GL_UNSIGNED_BYTE
       | x == GL_RG8I   -> GL_BYTE
       | x == GL_RG8UI  -> GL_UNSIGNED_BYTE
       | x == GL_RG16   -> GL_UNSIGNED_SHORT
       | x == GL_RG16I  -> GL_SHORT
       | x == GL_RG16UI -> GL_UNSIGNED_SHORT
       | x == GL_RG16F  -> GL_FLOAT
       | x == GL_RG32F  -> GL_FLOAT
       | x == GL_RG32I  -> GL_INT
       | x == GL_RG32UI -> GL_UNSIGNED_INT
       | x == GL_R11F_G11F_B10F -> GL_FLOAT
       | x == GL_RGBA32F -> GL_FLOAT
       | x == GL_RGBA32I -> GL_INT
       | x == GL_RGBA32UI -> GL_UNSIGNED_INT
       | x == GL_RGBA16 -> GL_UNSIGNED_SHORT
       | x == GL_RGBA16F -> GL_FLOAT
       | x == GL_RGBA16I -> GL_SHORT
       | x == GL_RGBA16UI -> GL_UNSIGNED_SHORT
       | x == GL_RGBA8 -> GL_UNSIGNED_BYTE
       | x == GL_RGBA8UI -> GL_UNSIGNED_BYTE
       | x == GL_SRGB8_ALPHA8 -> GL_UNSIGNED_BYTE
       | x == GL_RGB10_A2 -> GL_FLOAT
       | x == GL_RGB32F -> GL_FLOAT
       | x == GL_RGB32I -> GL_INT
       | x == GL_RGB32UI -> GL_UNSIGNED_INT
       | x == GL_RGB16F -> GL_FLOAT
       | x == GL_RGB16I -> GL_SHORT
       | x == GL_RGB16UI -> GL_UNSIGNED_SHORT
       | x == GL_RGB16 -> GL_UNSIGNED_SHORT
       | x == GL_RGB8 -> GL_UNSIGNED_BYTE
       | x == GL_RGB8I -> GL_BYTE
       | x == GL_RGB8UI -> GL_UNSIGNED_BYTE
       | x == GL_SRGB8 -> GL_UNSIGNED_BYTE
       | x == GL_RGB9_E5 -> GL_FLOAT
       | x == GL_COMPRESSED_RG_RGTC2 -> GL_FLOAT
       | x == GL_COMPRESSED_SIGNED_RG_RGTC2 -> GL_FLOAT
       | x == GL_COMPRESSED_RED_RGTC1 -> GL_FLOAT
       | x == GL_COMPRESSED_SIGNED_RED_RGTC1 -> GL_FLOAT
       | x == GL_COMPRESSED_RGB_S3TC_DXT1_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_RGBA_S3TC_DXT1_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_RGBA_S3TC_DXT3_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_RGBA_S3TC_DXT5_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_SRGB_S3TC_DXT1_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT -> GL_FLOAT
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT -> GL_FLOAT
       | x == GL_DEPTH_COMPONENT32 -> GL_FLOAT
       | x == GL_DEPTH_COMPONENT32F -> GL_FLOAT
       | x == GL_DEPTH_COMPONENT24 -> GL_FLOAT
       | x == GL_DEPTH_COMPONENT16 -> GL_FLOAT
       | x == GL_DEPTH32F_STENCIL8 -> GL_FLOAT_32_UNSIGNED_INT_24_8_REV
       | x == GL_DEPTH24_STENCIL8 -> GL_UNSIGNED_INT_24_8
       | otherwise ->
           error $ "typeFromInternalFormat: unknown internal format " <>
                   show x


formatFromInternalFormat :: GLenum -> GLenum
formatFromInternalFormat x =
    if | x == GL_R8     -> GL_RED
       | x == GL_R8I    -> GL_RED_INTEGER
       | x == GL_R8UI   -> GL_RED_INTEGER
       | x == GL_R16    -> GL_RED
       | x == GL_R16I   -> GL_RED_INTEGER
       | x == GL_R16UI  -> GL_RED_INTEGER
       | x == GL_R16F   -> GL_RED
       | x == GL_R32F   -> GL_RED
       | x == GL_R32I   -> GL_RED_INTEGER
       | x == GL_R32UI  -> GL_RED_INTEGER
       | x == GL_RG8    -> GL_RG
       | x == GL_RG8I   -> GL_RG_INTEGER
       | x == GL_RG8UI  -> GL_RG_INTEGER
       | x == GL_RG16   -> GL_RG
       | x == GL_RG16I  -> GL_RG_INTEGER
       | x == GL_RG16UI -> GL_RG_INTEGER
       | x == GL_RG16F  -> GL_RG
       | x == GL_RG32F  -> GL_RG
       | x == GL_RG32I  -> GL_RG_INTEGER
       | x == GL_RG32UI -> GL_RG_INTEGER
       | x == GL_R11F_G11F_B10F -> GL_RGB
       | x == GL_RGBA32F -> GL_RGBA
       | x == GL_RGBA32I -> GL_RGBA_INTEGER
       | x == GL_RGBA32UI -> GL_RGBA_INTEGER
       | x == GL_RGBA16 -> GL_RGBA
       | x == GL_RGBA16F -> GL_RGBA
       | x == GL_RGBA16I -> GL_RGBA_INTEGER
       | x == GL_RGBA16UI -> GL_RGBA_INTEGER
       | x == GL_RGBA8 -> GL_RGBA
       | x == GL_RGBA8UI -> GL_RGBA_INTEGER
       | x == GL_SRGB8_ALPHA8 -> GL_RGBA
       | x == GL_RGB10_A2 -> GL_RGBA
       | x == GL_RGB32F -> GL_RGB
       | x == GL_RGB32I -> GL_RGB_INTEGER
       | x == GL_RGB32UI -> GL_RGB_INTEGER
       | x == GL_RGB16F -> GL_RGB
       | x == GL_RGB16I -> GL_RGB_INTEGER
       | x == GL_RGB16UI -> GL_RGB_INTEGER
       | x == GL_RGB16 -> GL_RGB
       | x == GL_RGB8 -> GL_RGB
       | x == GL_RGB8I -> GL_RGB_INTEGER
       | x == GL_RGB8UI -> GL_RGB_INTEGER
       | x == GL_SRGB8 -> GL_RGB
       | x == GL_RGB9_E5 -> GL_RGB
       | x == GL_COMPRESSED_RG_RGTC2 -> GL_RG
       | x == GL_COMPRESSED_SIGNED_RG_RGTC2 -> GL_RG
       | x == GL_COMPRESSED_RED_RGTC1 -> GL_RED
       | x == GL_COMPRESSED_SIGNED_RED_RGTC1 -> GL_RED
       | x == GL_COMPRESSED_RGB_S3TC_DXT1_EXT -> GL_RGB
       | x == GL_COMPRESSED_RGBA_S3TC_DXT1_EXT -> GL_RGBA
       | x == GL_COMPRESSED_RGBA_S3TC_DXT3_EXT -> GL_RGBA
       | x == GL_COMPRESSED_RGBA_S3TC_DXT5_EXT -> GL_RGBA
       | x == GL_COMPRESSED_SRGB_S3TC_DXT1_EXT -> GL_RGB
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT -> GL_RGBA
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT -> GL_RGBA
       | x == GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT -> GL_RGBA
       | x == GL_DEPTH_COMPONENT32 -> GL_DEPTH_COMPONENT
       | x == GL_DEPTH_COMPONENT32F -> GL_DEPTH_COMPONENT
       | x == GL_DEPTH_COMPONENT24 -> GL_DEPTH_COMPONENT
       | x == GL_DEPTH_COMPONENT16 -> GL_DEPTH_COMPONENT
       | x == GL_DEPTH32F_STENCIL8 -> GL_DEPTH_STENCIL
       | x == GL_DEPTH24_STENCIL8 -> GL_DEPTH_STENCIL
       | otherwise ->
           error $ "formatFromInternalFormat: unknown internal format " <>
                   show x


