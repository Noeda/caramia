-- | This module implements GL_ARB_texture_storage with
-- GL_EXT_direct_state_access in terms of glTexImageX calls.
--
-- The implementation is unlikely to be perfect but it should work for most
-- cases.

{-# LANGUAGE NoImplicitPrelude, MultiWayIf, ConstraintKinds #-}
{-# LANGUAGE FlexibleContexts #-}

module Graphics.Caramia.Internal.TexStorage
    ( fakeTextureStorage1D
    , fakeTextureStorage2D
    , fakeTextureStorage3D )
    where

import Graphics.Caramia.Prelude
import Graphics.Caramia.Internal.OpenGLCApi
import Graphics.Caramia.Texture.Internal
import Control.Monad.Catch

-- | glTextureStorage1D
fakeTextureStorage1D :: (OpenGLLike e m, MonadMask m)
                     => GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> m ()
fakeTextureStorage1D texture target levels internalformat width = mask_ $ do
    branchExt gl_EXT_direct_state_access
              dsaFakeTextureStorage1D
              nodsaFakeTextureStorage1D
  where
    rec fun i w | i < levels = fun i w >>
                               rec fun (i+1) (max 1 $ w `div` 2)
                | otherwise = return ()

    dsaFakeTextureStorage1D = do
        rec (\i w ->
            glTextureImage1DEXT texture
                                target
                                i
                                (fromIntegral internalformat)
                                w
                                0
                                (formatFromInternalFormat internalformat)
                                (typeFromInternalFormat internalformat)
                                nullPtr) 0 width
        glTextureParameteriEXT texture target gl_TEXTURE_MAX_LEVEL (levels-1)

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
        glTexParameteri target gl_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

-- | glTextureStorage2D
fakeTextureStorage2D :: (OpenGLLike e m, MonadMask m)
                     => GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> m ()
fakeTextureStorage2D texture target levels internalformat width height =
    mask_ $ branchExt gl_EXT_direct_state_access
                      dsaFakeTextureStorage2D
                      nodsaFakeTextureStorage2D
  where
    rec fun i w h | i < levels = fun i w h >>
                                 rec fun
                                     (i+1)
                                     (max 1 $ w `div` 2)
                                     (max 1 $ h `div` 2)
                  | otherwise = return ()

    dsaFakeTextureStorage2D = do
        rec (\i w h ->
            if target /= gl_TEXTURE_CUBE_MAP
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
        glTextureParameteriEXT texture target gl_TEXTURE_MAX_LEVEL (levels-1)

    nodsaFakeTextureStorage2D = do
        old_tex <- gi $ bindingQueryPoint target
        glBindTexture target texture
        rec (\i w h -> if target /= gl_TEXTURE_CUBE_MAP
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
        glTexParameteri target gl_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

cubeSides :: [GLenum]
cubeSides = [gl_TEXTURE_CUBE_MAP_POSITIVE_X
            ,gl_TEXTURE_CUBE_MAP_POSITIVE_Y
            ,gl_TEXTURE_CUBE_MAP_POSITIVE_Z
            ,gl_TEXTURE_CUBE_MAP_NEGATIVE_X
            ,gl_TEXTURE_CUBE_MAP_NEGATIVE_Y
            ,gl_TEXTURE_CUBE_MAP_NEGATIVE_Z]

-- | glTextureStorage3D
fakeTextureStorage3D :: (MonadMask m, OpenGLLike e m)
                     => GLuint
                     -> GLenum
                     -> GLsizei
                     -> GLenum
                     -> GLsizei
                     -> GLsizei
                     -> GLsizei
                     -> m ()
fakeTextureStorage3D texture target levels internalformat width height depth =
    mask_ $ branchExt gl_EXT_direct_state_access
                      dsaFakeTextureStorage3D
                      nodsaFakeTextureStorage3D
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
        glTextureParameteriEXT texture target gl_TEXTURE_MAX_LEVEL (levels-1)

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
        glTexParameteri target gl_TEXTURE_MAX_LEVEL (levels-1)
        glBindTexture target old_tex

typeFromInternalFormat :: GLenum -> GLenum
typeFromInternalFormat x =
    if | x == gl_R8     -> gl_UNSIGNED_BYTE
       | x == gl_R8I    -> gl_BYTE
       | x == gl_R8UI   -> gl_UNSIGNED_BYTE
       | x == gl_R16    -> gl_UNSIGNED_SHORT
       | x == gl_R16I   -> gl_SHORT
       | x == gl_R16UI  -> gl_UNSIGNED_SHORT
       | x == gl_R16F   -> gl_FLOAT
       | x == gl_R32F   -> gl_FLOAT
       | x == gl_R32I   -> gl_INT
       | x == gl_R32UI  -> gl_UNSIGNED_INT
       | x == gl_RG8    -> gl_UNSIGNED_BYTE
       | x == gl_RG8I   -> gl_BYTE
       | x == gl_RG8UI  -> gl_UNSIGNED_BYTE
       | x == gl_RG16   -> gl_UNSIGNED_SHORT
       | x == gl_RG16I  -> gl_SHORT
       | x == gl_RG16UI -> gl_UNSIGNED_SHORT
       | x == gl_RG16F  -> gl_FLOAT
       | x == gl_RG32F  -> gl_FLOAT
       | x == gl_RG32I  -> gl_INT
       | x == gl_RG32UI -> gl_UNSIGNED_INT
       | x == gl_R11F_G11F_B10F -> gl_FLOAT
       | x == gl_RGBA32F -> gl_FLOAT
       | x == gl_RGBA32I -> gl_INT
       | x == gl_RGBA32UI -> gl_UNSIGNED_INT
       | x == gl_RGBA16 -> gl_UNSIGNED_SHORT
       | x == gl_RGBA16F -> gl_FLOAT
       | x == gl_RGBA16I -> gl_SHORT
       | x == gl_RGBA16UI -> gl_UNSIGNED_SHORT
       | x == gl_RGBA8 -> gl_UNSIGNED_BYTE
       | x == gl_RGBA8UI -> gl_UNSIGNED_BYTE
       | x == gl_SRGB8_ALPHA8 -> gl_UNSIGNED_BYTE
       | x == gl_RGB10_A2 -> gl_FLOAT
       | x == gl_RGB32F -> gl_FLOAT
       | x == gl_RGB32I -> gl_INT
       | x == gl_RGB32UI -> gl_UNSIGNED_INT
       | x == gl_RGB16F -> gl_FLOAT
       | x == gl_RGB16I -> gl_SHORT
       | x == gl_RGB16UI -> gl_UNSIGNED_SHORT
       | x == gl_RGB16 -> gl_UNSIGNED_SHORT
       | x == gl_RGB8 -> gl_UNSIGNED_BYTE
       | x == gl_RGB8I -> gl_BYTE
       | x == gl_RGB8UI -> gl_UNSIGNED_BYTE
       | x == gl_SRGB8 -> gl_UNSIGNED_BYTE
       | x == gl_RGB9_E5 -> gl_FLOAT
       | x == gl_COMPRESSED_RG_RGTC2 -> gl_FLOAT
       | x == gl_COMPRESSED_SIGNED_RG_RGTC2 -> gl_FLOAT
       | x == gl_COMPRESSED_RED_RGTC1 -> gl_FLOAT
       | x == gl_COMPRESSED_SIGNED_RED_RGTC1_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_RGB_S3TC_DXT1_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_RGBA_S3TC_DXT1_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_RGBA_S3TC_DXT3_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_RGBA_S3TC_DXT5_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_SRGB_S3TC_DXT1_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT -> gl_FLOAT
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT -> gl_FLOAT
       | x == gl_DEPTH_COMPONENT32 -> gl_FLOAT
       | x == gl_DEPTH_COMPONENT32F -> gl_FLOAT
       | x == gl_DEPTH_COMPONENT24 -> gl_FLOAT
       | x == gl_DEPTH_COMPONENT16 -> gl_FLOAT
       | x == gl_DEPTH32F_STENCIL8 -> gl_FLOAT_32_UNSIGNED_INT_24_8_REV
       | x == gl_DEPTH24_STENCIL8 -> gl_UNSIGNED_INT_24_8
       | otherwise ->
           error $ "typeFromInternalFormat: unknown internal format " <>
                   show x


formatFromInternalFormat :: GLenum -> GLenum
formatFromInternalFormat x =
    if | x == gl_R8     -> gl_RED
       | x == gl_R8I    -> gl_RED_INTEGER
       | x == gl_R8UI   -> gl_RED_INTEGER
       | x == gl_R16    -> gl_RED
       | x == gl_R16I   -> gl_RED_INTEGER
       | x == gl_R16UI  -> gl_RED_INTEGER
       | x == gl_R16F   -> gl_RED
       | x == gl_R32F   -> gl_RED
       | x == gl_R32I   -> gl_RED_INTEGER
       | x == gl_R32UI  -> gl_RED_INTEGER
       | x == gl_RG8    -> gl_RG
       | x == gl_RG8I   -> gl_RG_INTEGER
       | x == gl_RG8UI  -> gl_RG_INTEGER
       | x == gl_RG16   -> gl_RG
       | x == gl_RG16I  -> gl_RG_INTEGER
       | x == gl_RG16UI -> gl_RG_INTEGER
       | x == gl_RG16F  -> gl_RG
       | x == gl_RG32F  -> gl_RG
       | x == gl_RG32I  -> gl_RG_INTEGER
       | x == gl_RG32UI -> gl_RG_INTEGER
       | x == gl_R11F_G11F_B10F -> gl_RGB
       | x == gl_RGBA32F -> gl_RGBA
       | x == gl_RGBA32I -> gl_RGBA_INTEGER
       | x == gl_RGBA32UI -> gl_RGBA_INTEGER
       | x == gl_RGBA16 -> gl_RGBA
       | x == gl_RGBA16F -> gl_RGBA
       | x == gl_RGBA16I -> gl_RGBA_INTEGER
       | x == gl_RGBA16UI -> gl_RGBA_INTEGER
       | x == gl_RGBA8 -> gl_RGBA
       | x == gl_RGBA8UI -> gl_RGBA_INTEGER
       | x == gl_SRGB8_ALPHA8 -> gl_RGBA
       | x == gl_RGB10_A2 -> gl_RGBA
       | x == gl_RGB32F -> gl_RGB
       | x == gl_RGB32I -> gl_RGB_INTEGER
       | x == gl_RGB32UI -> gl_RGB_INTEGER
       | x == gl_RGB16F -> gl_RGB
       | x == gl_RGB16I -> gl_RGB_INTEGER
       | x == gl_RGB16UI -> gl_RGB_INTEGER
       | x == gl_RGB16 -> gl_RGB
       | x == gl_RGB8 -> gl_RGB
       | x == gl_RGB8I -> gl_RGB_INTEGER
       | x == gl_RGB8UI -> gl_RGB_INTEGER
       | x == gl_SRGB8 -> gl_RGB
       | x == gl_RGB9_E5 -> gl_RGB
       | x == gl_COMPRESSED_RG_RGTC2 -> gl_RG
       | x == gl_COMPRESSED_SIGNED_RG_RGTC2 -> gl_RG
       | x == gl_COMPRESSED_RED_RGTC1 -> gl_RED
       | x == gl_COMPRESSED_SIGNED_RED_RGTC1 -> gl_RED
       | x == gl_COMPRESSED_RGB_S3TC_DXT1_EXT -> gl_RGB
       | x == gl_COMPRESSED_RGBA_S3TC_DXT1_EXT -> gl_RGBA
       | x == gl_COMPRESSED_RGBA_S3TC_DXT3_EXT -> gl_RGBA
       | x == gl_COMPRESSED_RGBA_S3TC_DXT5_EXT -> gl_RGBA
       | x == gl_COMPRESSED_SRGB_S3TC_DXT1_EXT -> gl_RGB
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT -> gl_RGBA
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT -> gl_RGBA
       | x == gl_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT -> gl_RGBA
       | x == gl_DEPTH_COMPONENT32 -> gl_DEPTH_COMPONENT
       | x == gl_DEPTH_COMPONENT32F -> gl_DEPTH_COMPONENT
       | x == gl_DEPTH_COMPONENT24 -> gl_DEPTH_COMPONENT
       | x == gl_DEPTH_COMPONENT16 -> gl_DEPTH_COMPONENT
       | x == gl_DEPTH32F_STENCIL8 -> gl_DEPTH_STENCIL
       | x == gl_DEPTH24_STENCIL8 -> gl_DEPTH_STENCIL
       | otherwise ->
           error $ "formatFromInternalFormat: unknown internal format " <>
                   show x


