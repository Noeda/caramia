{-# LANGUAGE NoImplicitPrelude, BangPatterns, DeriveDataTypeable #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}

-- | Matrix, vector and quaternion math module. This module is concerned about
-- common functions for graphics programming and the types from this module are
-- used by the rest of Caramia.
--
-- If you require more functionality or types, I suggest you look at a
-- dedicated linear algebra package such as \'hmatrix\' or \'linear\'.
--
-- #storable#
-- `Matrix44`, `Matrix33`, `Quaternion` and `Vector3` are all `Storable`s.
--
-- The matrices are stored as column vectors. That is, if a `Matrix4` is
-- labelled like this:
--
-- @
--         Col.1  Col.2  Col.3  Col.4
--        ---------------------------
-- Row 1    m11    m12    m13    m14
-- Row 2    m21    m22    m23    m24
-- Row 3    m31    m32    m33    m34
-- Row 4    m41    m42    m43    m44
--        ---------------------------
-- @
--
-- The matrix would occupy memory (as a `Storable`) as follows:
--
-- @
--   m11, m21, m31, m41, m12, m22, m32, m42, m13 ...
-- @
--
-- where each value is a 32-bit floating point value. This is what OpenGL uses.
--
-- (if the above matrix was a translation matrix, then m14, m24 and m34 would
-- contain the x, y and z coordinates of a translation).
--
-- The scheme is the same for a `Matrix33`, just drop the fourth row and
-- column.
--
-- `Vector3` is stored as three consecutive floating point values.
--
-- @
--   x, y, z
-- @
--
-- `Quaternion` first stores the `w` as the last element. So, the layout of a
-- quaternion is:
--
-- @
--   x, y, z, w
-- @
--
-- This is also how `Caramia.Shader` maps quaternions to vectors in shaders.
--

module Graphics.Caramia.Math
    ( Matrix44(..)
    , Matrix33(..)
    , Vector3(..)
    , Quaternion(..)

    -- * sizeOfs
    , sizeOfMatrix44
    , sizeOfMatrix33
    , sizeOfVector3
    , sizeOfQuaternion

    -- * 4x4 matrices
    , matrix44
    , withMatrix44Ptr
    , inverse44
    , identity44
    , multiply44
    , determinant44
    , zero44
    , perspective44
    , distance44
    , frustum44
    , ortho44
    , lookat44
    , translate44
    , transpose44
    , scale44
    , rotate44

    -- * 3x3 matrices
    , matrix33
    , withMatrix33Ptr
    , inverse33
    , identity33
    , multiply33
    , determinant33
    , zero33
    , distance33
    , transpose33
    , matrix33ToMatrix44
    , matrix44ToMatrix33


    -- * quaternions
    , quaternion
    , identityq
    , canonicalizeq
    , distanceq
    , lengthq
    , normalizeq
    , multiplyq
    , zeroq
    , axisAngleToQuaternion
    , matrix44ToQuaternion
    , quaternionToMatrix44

    , toTupleq
    , fromTupleq

    -- * 3-component vectors
    , vector3
    , zero3
    , distance3
    , length3
    , plus3
    , minus3
    , normalize3
    , angle3
    , cross3
    , dot3
    , negative3
    , scalarMultiply3
    , vector3_1ToQuaternion
    , vector3Transform44
    , toTuple3
    , fromTuple3

    -- ** Lenses
    , _x
    , _y
    , _z

    -- * Misc
    , prettyShow )
    where

-- Hacking guide:
--
-- All data types are unpacked and strict. (Almost) all functions use bang
-- patterns to make sure everything is strict (mostly unneeded as they would be
-- strict anyway but, for consistency, in this module, use them everywhere).
--
-- Everything is also inlined.
--
-- Matrix44 functions have 44 at the end.
-- Matrix33 functions have 33 at the end.
-- Vector3 functions have 3 at the end.
-- Quaternion functions have q at the end.
--
--
-- Hlint likes to complain about this file, mostly about the repetitions.
--

import Graphics.Caramia.Prelude

import Foreign.Ptr ( Ptr, castPtr )
import Foreign.Storable ( pokeElemOff, Storable(..) )
import Foreign.Marshal.Array ( allocaArray )
import Foreign.C.Types ( CFloat(..) )
import Graphics.Caramia.Internal.Lens

{-# ANN module ("HLint: ignore Reduce duplication" :: String) #-}

-- | A 4x4 matrix. Each mXX function accesses an individual element of the
-- matrix.
data Matrix44 = Matrix44 { m11 :: {-# UNPACK #-} !Float
                         , m21 :: {-# UNPACK #-} !Float
                         , m31 :: {-# UNPACK #-} !Float
                         , m41 :: {-# UNPACK #-} !Float
                         , m12 :: {-# UNPACK #-} !Float
                         , m22 :: {-# UNPACK #-} !Float
                         , m32 :: {-# UNPACK #-} !Float
                         , m42 :: {-# UNPACK #-} !Float
                         , m13 :: {-# UNPACK #-} !Float
                         , m23 :: {-# UNPACK #-} !Float
                         , m33 :: {-# UNPACK #-} !Float
                         , m43 :: {-# UNPACK #-} !Float
                         , m14 :: {-# UNPACK #-} !Float
                         , m24 :: {-# UNPACK #-} !Float
                         , m34 :: {-# UNPACK #-} !Float
                         , m44 :: {-# UNPACK #-} !Float }
               deriving ( Eq, Show, Read, Ord, Typeable )

-- | A 3x3 matrix. Each nXX function accesses an individual element of the
-- matrix.
data Matrix33 = Matrix33 { n11 :: {-# UNPACK #-} !Float
                         , n21 :: {-# UNPACK #-} !Float
                         , n31 :: {-# UNPACK #-} !Float
                         , n12 :: {-# UNPACK #-} !Float
                         , n22 :: {-# UNPACK #-} !Float
                         , n32 :: {-# UNPACK #-} !Float
                         , n13 :: {-# UNPACK #-} !Float
                         , n23 :: {-# UNPACK #-} !Float
                         , n33 :: {-# UNPACK #-} !Float }
               deriving ( Eq, Show, Read, Ord, Typeable )

-- | A 3-dimensional vector. `x`, `y` and `z` access each individual
-- component.
data Vector3 = Vector3 { x :: {-# UNPACK #-} !Float
                       , y :: {-# UNPACK #-} !Float
                       , z :: {-# UNPACK #-} !Float }
               deriving ( Eq, Show, Read, Ord, Typeable )

_x :: Lens' Vector3 Float
_x = lens x (\old_vec new_x -> old_vec { x = new_x })
_y :: Lens' Vector3 Float
_y = lens y (\old_vec new_y -> old_vec { y = new_y })
_z :: Lens' Vector3 Float
_z = lens z (\old_vec new_z -> old_vec { z = new_z })

-- | A quaternion. It's composed of four values, `qx`, `qy`, `qz` and `qw`.
--
-- In the context of Caramia, quaternions are used exclusively to represent
-- rotations.
data Quaternion = Quaternion { qx :: {-# UNPACK #-} !Float
                             , qy :: {-# UNPACK #-} !Float
                             , qz :: {-# UNPACK #-} !Float
                             , qw :: {-# UNPACK #-} !Float }
                  deriving ( Eq, Show, Read, Ord, Typeable )

-- | Returns the size of a `Vector3`. This is just a shortcut to calling
-- `sizeOf` on a vector.
sizeOfVector3 :: Int
sizeOfVector3 = sizeOf (undefined :: Vector3)

-- | Returns the size of a `Matrix3`. This is just a shortcut to calling
-- `sizeOf` on a matrix.
sizeOfMatrix33 :: Int
sizeOfMatrix33 = sizeOf (undefined :: Matrix33)

-- | Returns the size of a `Matrix4`. This is just a shortcut to calling
-- `sizeOf` on a matrix.
sizeOfMatrix44 :: Int
sizeOfMatrix44 = sizeOf (undefined :: Matrix44)

-- | Returns the size of a `Quaternion`. This is just a shortcut to calling
-- `sizeOf` on a quaternion.
sizeOfQuaternion :: Int
sizeOfQuaternion = sizeOf (undefined :: Quaternion)

instance Storable Vector3 where
    sizeOf _ = sizeOf (undefined :: Float) * 3
    alignment _ = alignment (undefined :: Float)
    peek ptr = {-# SCC "Vector3_peek" #-} do
        x <- peekElemOff cptr 0
        y <- peekElemOff cptr 1
        z <- peekElemOff cptr 2
        return $ Vector3 x y z
      where
        cptr = castPtr ptr

    poke ptr (Vector3 x y z) = {-# SCC "Vector3_poke" #-} do
        pokeElemOff cptr 0 x
        pokeElemOff cptr 1 y
        pokeElemOff cptr 2 z
      where
        cptr = castPtr ptr

instance Storable Quaternion where
    sizeOf _ = sizeOf (undefined :: Float) * 4
    alignment _ = alignment (undefined :: Float)
    peek ptr = {-# SCC "Quaternion_peek" #-} do
        x <- peekElemOff cptr 0
        y <- peekElemOff cptr 1
        z <- peekElemOff cptr 2
        w <- peekElemOff cptr 3
        return $ Quaternion x y z w
      where
        cptr = castPtr ptr

    poke ptr (Quaternion x y z w) = {-# SCC "Quaternion_poke" #-} do
        pokeElemOff cptr 0 x
        pokeElemOff cptr 1 y
        pokeElemOff cptr 2 z
        pokeElemOff cptr 3 w
      where
        cptr = castPtr ptr

instance Storable Matrix44 where
    sizeOf _ = sizeOf (undefined :: Float) * 16
    alignment _ = alignment (undefined :: Float)
    peek ptr = {-# SCC "Matrix44_peek" #-} do
        r11 <- peekElemOff cptr 0
        r21 <- peekElemOff cptr 1
        r31 <- peekElemOff cptr 2
        r41 <- peekElemOff cptr 3
        r12 <- peekElemOff cptr 4
        r22 <- peekElemOff cptr 5
        r32 <- peekElemOff cptr 6
        r42 <- peekElemOff cptr 7
        r13 <- peekElemOff cptr 8
        r23 <- peekElemOff cptr 9
        r33 <- peekElemOff cptr 10
        r43 <- peekElemOff cptr 11
        r14 <- peekElemOff cptr 12
        r24 <- peekElemOff cptr 13
        r34 <- peekElemOff cptr 14
        r44 <- peekElemOff cptr 15
        return $ matrix44 r11 r12 r13 r14
                          r21 r22 r23 r24
                          r31 r32 r33 r34
                          r41 r42 r43 r44
      where
        cptr = castPtr ptr

    poke ptr mat = {-# SCC "Matrix44_poke" #-} do
        pokeElemOff cptr 0  f11
        pokeElemOff cptr 1  f21
        pokeElemOff cptr 2  f31
        pokeElemOff cptr 3  f41
        pokeElemOff cptr 4  f12
        pokeElemOff cptr 5  f22
        pokeElemOff cptr 6  f32
        pokeElemOff cptr 7  f42
        pokeElemOff cptr 8  f13
        pokeElemOff cptr 9  f23
        pokeElemOff cptr 10 f33
        pokeElemOff cptr 11 f43
        pokeElemOff cptr 12 f14
        pokeElemOff cptr 13 f24
        pokeElemOff cptr 14 f34
        pokeElemOff cptr 15 f44
      where
        cptr = castPtr ptr
        f11 = m11 mat
        f21 = m21 mat
        f31 = m31 mat
        f41 = m41 mat
        f12 = m12 mat
        f22 = m22 mat
        f32 = m32 mat
        f42 = m42 mat
        f13 = m13 mat
        f23 = m23 mat
        f33 = m33 mat
        f43 = m43 mat
        f14 = m14 mat
        f24 = m24 mat
        f34 = m34 mat
        f44 = m44 mat

instance Storable Matrix33 where
    sizeOf _ = sizeOf (undefined :: CFloat) * 9
    alignment _ = alignment (undefined :: CFloat)
    peek ptr = {-# SCC "Matrix33_peek" #-} do
        r11 <- peekElemOff cptr 0
        r21 <- peekElemOff cptr 1
        r31 <- peekElemOff cptr 2
        r12 <- peekElemOff cptr 3
        r22 <- peekElemOff cptr 4
        r32 <- peekElemOff cptr 5
        r13 <- peekElemOff cptr 6
        r23 <- peekElemOff cptr 7
        r33 <- peekElemOff cptr 8
        return $ matrix33 r11 r12 r13
                          r21 r22 r23
                          r31 r32 r33
      where
        cptr = castPtr ptr

    poke ptr mat = {-# SCC "Matrix33_poke" #-} do
        pokeElemOff cptr 0 f11
        pokeElemOff cptr 1 f21
        pokeElemOff cptr 2 f31
        pokeElemOff cptr 3 f12
        pokeElemOff cptr 4 f22
        pokeElemOff cptr 5 f32
        pokeElemOff cptr 6 f13
        pokeElemOff cptr 7 f23
        pokeElemOff cptr 8 f33
      where
        cptr = castPtr ptr
        f11 = n11 mat
        f21 = n21 mat
        f31 = n31 mat
        f12 = n12 mat
        f22 = n22 mat
        f32 = n32 mat
        f13 = n13 mat
        f23 = n23 mat
        f33 = n33 mat

-- | Constructs a `Vector3` out of three values.
vector3 :: Float       -- ^ X-coodinate.
        -> Float       -- ^ Y-coodinate.
        -> Float       -- ^ Z-coodinate.
        -> Vector3
{-# INLINE vector3 #-}
vector3 !x !y !z = Vector3 { x = x, y = y, z = z }

-- | Constructs a `Matrix44` out of 16 values.
--
-- The order of the values is column-first. That is, in this order:
--
-- @
--    m11 m12 m13 m14 m21 m22 m23 m24 m31 ...
-- @
--
-- This allows you to write the matrix out this way:
--
-- @
--   let the_greatest_4x4_matrix_of_them_all =
--          matrix4 m11 m12 m13 m14
--                  m21 m22 m23 m24
--                  m31 m32 m33 m34
--                  m41 m42 m43 m44
--    in ...
-- @
matrix44 :: Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Matrix44
{-# INLINE matrix44 #-}
matrix44 !m11 !m12 !m13 !m14
         !m21 !m22 !m23 !m24
         !m31 !m32 !m33 !m34
         !m41 !m42 !m43 !m44 = {-# SCC "matrix44" #-}
    Matrix44 { m11 = m11
             , m21 = m21
             , m31 = m31
             , m41 = m41
             , m12 = m12
             , m22 = m22
             , m32 = m32
             , m42 = m42
             , m13 = m13
             , m23 = m23
             , m33 = m33
             , m43 = m43
             , m14 = m14
             , m24 = m24
             , m34 = m34
             , m44 = m44 }

-- | Constructs a `Matrix3` out of 9 values.
--
-- The order of the values is the same as for `matrix4`, just drop the fourth
-- row and column.
matrix33 :: Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Float
         -> Matrix33
{-# INLINE matrix33 #-}
matrix33 !m11 !m12 !m13
         !m21 !m22 !m23
         !m31 !m32 !m33 = {-# SCC "matrix33" #-}
    Matrix33 { n11 = m11
             , n21 = m21
             , n31 = m31
             , n12 = m12
             , n22 = m22
             , n32 = m32
             , n13 = m13
             , n23 = m23
             , n33 = m33 }

-- | Transforms a `Matrix33` into a `Matrix44`.
--
-- If this is the original 3x3 matrix:
--
-- @
--  ---------------------
--    m11    m12    m13
--    m21    m22    m23
--    m31    m32    m33
--  ---------------------
-- @
--
-- Then this is the resulting matrix:
--
-- @
--  -------------------------
--    m11    m12    m13    0
--    m21    m22    m23    0
--    m31    m32    m33    0
--     0      0      0     1
--  -------------------------
-- @
matrix33ToMatrix44 :: Matrix33 -> Matrix44
{-# INLINE matrix33ToMatrix44 #-}
matrix33ToMatrix44 !mat = {-# SCC "matrix33ToMatrix44" #-}
    Matrix44 { m11 = f11
            , m21 = f21
            , m31 = f31
            , m12 = f12
            , m22 = f22
            , m32 = f32
            , m13 = f13
            , m23 = f23
            , m33 = f33

            , m41 = 0.0
            , m42 = 0.0
            , m43 = 0.0
            , m44 = 1.0
            , m14 = 0.0
            , m24 = 0.0
            , m34 = 0.0 }
  where
    f11 = n11 mat
    f21 = n21 mat
    f31 = n31 mat
    f12 = n12 mat
    f22 = n22 mat
    f32 = n32 mat
    f13 = n13 mat
    f23 = n23 mat
    f33 = n33 mat


-- | Transforms a `Matrix44` into a `Matrix33`.
--
-- If this is the original 4x4 matrix:
--
-- @
--  ----------------------------
--    m11    m12    m13    m14
--    m21    m22    m23    m24
--    m31    m32    m33    m34
--    m41    m42    m43    m44
--  ----------------------------
-- @
--
-- Then this is the resulting 3x3 matrix:
--
-- @
--  ---------------------
--    m11    m12    m13
--    m21    m22    m23
--    m31    m32    m33
--  ---------------------
-- @
--
-- The fourth row and column are discarded.
matrix44ToMatrix33 :: Matrix44 -> Matrix33
{-# INLINE matrix44ToMatrix33 #-}
matrix44ToMatrix33 !mat = {-# SCC "matrix44ToMatrix33" #-}
    Matrix33 { n11 = f11
            , n21 = f21
            , n31 = f31
            , n12 = f12
            , n22 = f22
            , n32 = f32
            , n13 = f13
            , n23 = f23
            , n33 = f33 }
  where
    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat

-- | Runs an IO action with a pointer to a Matrix44. The pointer is valid only
-- during the given IO action.
--
-- The pointer points to an array of 16 floating point values. See
-- "Caramia.Math#storable" for a description in which order the values appear.
withMatrix44Ptr :: Matrix44                -- ^ The matrix to marshal.
               -> (Ptr CFloat -> IO a)   -- ^ An IO action that receives a
                                         --   pointer to floating point values
                                         --   describing the matrix.
               -> IO a
{-# INLINE withMatrix44Ptr #-}
withMatrix44Ptr mat action = {-# SCC "withMatrix44Ptr" #-}
    allocaArray 16 $ \ptr -> do
        pokeElemOff ptr 0 (CFloat $ m11 mat)
        pokeElemOff ptr 1 (CFloat $ m21 mat)
        pokeElemOff ptr 2 (CFloat $ m31 mat)
        pokeElemOff ptr 3 (CFloat $ m41 mat)
        pokeElemOff ptr 4 (CFloat $ m12 mat)
        pokeElemOff ptr 5 (CFloat $ m22 mat)
        pokeElemOff ptr 6 (CFloat $ m32 mat)
        pokeElemOff ptr 7 (CFloat $ m42 mat)
        pokeElemOff ptr 8 (CFloat $ m13 mat)
        pokeElemOff ptr 9 (CFloat $ m23 mat)
        pokeElemOff ptr 10 (CFloat $ m33 mat)
        pokeElemOff ptr 11 (CFloat $ m43 mat)
        pokeElemOff ptr 12 (CFloat $ m14 mat)
        pokeElemOff ptr 13 (CFloat $ m24 mat)
        pokeElemOff ptr 14 (CFloat $ m34 mat)
        pokeElemOff ptr 15 (CFloat $ m44 mat)
        action ptr

-- | Same as `withMatrix44Ptr`, only with 9 floating values.
withMatrix33Ptr :: Matrix33 -> (Ptr CFloat -> IO a) -> IO a
{-# INLINE withMatrix33Ptr #-}
withMatrix33Ptr mat action = {-# SCC "withMatrix33Ptr" #-}
    allocaArray 9 $ \ptr -> do
        pokeElemOff ptr 0 (CFloat $ n11 mat)
        pokeElemOff ptr 1 (CFloat $ n21 mat)
        pokeElemOff ptr 2 (CFloat $ n31 mat)
        pokeElemOff ptr 3 (CFloat $ n12 mat)
        pokeElemOff ptr 4 (CFloat $ n22 mat)
        pokeElemOff ptr 5 (CFloat $ n32 mat)
        pokeElemOff ptr 6 (CFloat $ n13 mat)
        pokeElemOff ptr 7 (CFloat $ n23 mat)
        pokeElemOff ptr 8 (CFloat $ n33 mat)
        action ptr

-- | Returns the identity 3x3 matrix.
identity33 :: Matrix33
{-# INLINE identity33 #-}
identity33 = {-# SCC "identity33" #-}
            Matrix33 { n11 = 1.0
                    , n21 = 0.0
                    , n31 = 0.0
                    , n12 = 0.0
                    , n22 = 1.0
                    , n32 = 0.0
                    , n13 = 0.0
                    , n23 = 0.0
                    , n33 = 1.0 }

-- | Returns the 3x3 matrix where all components are zero.
zero33 :: Matrix33
{-# INLINE zero33 #-}
zero33 = {-# SCC "zero33" #-}
         Matrix33 { n11 = 0.0
                 , n21 = 0.0
                 , n31 = 0.0
                 , n12 = 0.0
                 , n22 = 0.0
                 , n32 = 0.0
                 , n13 = 0.0
                 , n23 = 0.0
                 , n33 = 0.0 }

-- | Returns the identity 4x4 matrix.
identity44 :: Matrix44
{-# INLINE identity44 #-}
identity44 = {-# SCC "identity44" #-}
            Matrix44 { m11 = 1.0
                    , m21 = 0.0
                    , m31 = 0.0
                    , m41 = 0.0
                    , m12 = 0.0
                    , m22 = 1.0
                    , m32 = 0.0
                    , m42 = 0.0
                    , m13 = 0.0
                    , m23 = 0.0
                    , m33 = 1.0
                    , m43 = 0.0
                    , m14 = 0.0
                    , m24 = 0.0
                    , m34 = 0.0
                    , m44 = 1.0 }

-- | Returns the 4x4 matrix where all components are zero.
zero44 :: Matrix44
{-# INLINE zero44 #-}
zero44 = {-# SCC "zero44" #-}
        Matrix44 { m11 = 0.0
                , m21 = 0.0
                , m31 = 0.0
                , m41 = 0.0
                , m12 = 0.0
                , m22 = 0.0
                , m32 = 0.0
                , m42 = 0.0
                , m13 = 0.0
                , m23 = 0.0
                , m33 = 0.0
                , m43 = 0.0
                , m14 = 0.0
                , m24 = 0.0
                , m34 = 0.0
                , m44 = 0.0 }

-- | Calculates the inverse of a 4x4 matrix.
--
-- A matrix doesn't always have an inverse. In this case, the matrix values
-- will most likely end up being NaNs.
inverse44 :: Matrix44 -> Matrix44
{-# INLINE inverse44 #-}
inverse44 !mat4 = {-# SCC "inverse44" #-}
    Matrix44 { m11 = (f11 * b11 - f12 * b10 + f13 * b9) * det
            , m12 = (f02 * b10 - f01 * b11 - f03 * b9) * det
            , m13 = (f31 * b5 - f32 * b4 + f33 * b3) * det
            , m14 = (f22 * b4 - f21 * b5 - f23 * b3) * det
            , m21 = (f12 * b8 - f10 * b11 - f13 * b7) * det
            , m22 = (f00 * b11 - f02 * b8 + f03 * b7) * det
            , m23 = (f32 * b2 - f30 * b5 - f33 * b1) * det
            , m24 = (f20 * b5 - f22 * b2 + f23 * b1) * det
            , m31 = (f10 * b10 - f11 * b8 + f13 * b6) * det
            , m32 = (f01 * b8 - f00 * b10 - f03 * b6) * det
            , m33 = (f30 * b4 - f31 * b2 + f33 * b0) * det
            , m34 = (f21 * b2 - f20 * b4 - f23 * b0) * det
            , m41 = (f11 * b7 - f10 * b9 - f12 * b6) * det
            , m42 = (f00 * b9 - f01 * b7 + f02 * b6) * det
            , m43 = (f31 * b1 - f30 * b3 - f32 * b0) * det
            , m44 = (f20 * b3 - f21 * b1 + f22 * b0) * det }
  where
    f00 = m11 mat4
    f10 = m21 mat4
    f20 = m31 mat4
    f30 = m41 mat4
    f01 = m12 mat4
    f11 = m22 mat4
    f21 = m32 mat4
    f31 = m42 mat4
    f02 = m13 mat4
    f12 = m23 mat4
    f22 = m33 mat4
    f32 = m43 mat4
    f03 = m14 mat4
    f13 = m24 mat4
    f23 = m34 mat4
    f33 = m44 mat4

    b0  = f00 * f11 - f01 * f10
    b1  = f00 * f12 - f02 * f10
    b2  = f00 * f13 - f03 * f10
    b3  = f01 * f12 - f02 * f11
    b4  = f01 * f13 - f03 * f11
    b5  = f02 * f13 - f03 * f12
    b6  = f20 * f31 - f21 * f30
    b7  = f20 * f32 - f22 * f30
    b8  = f20 * f33 - f23 * f30
    b9  = f21 * f32 - f22 * f31
    b10 = f21 * f33 - f23 * f31
    b11 = f22 * f33 - f23 * f32

    det' = b0*b11 - b1*b10 + b2*b9 + b3*b8 - b4*b7 + b5*b6
    det = 1.0 / det'

-- | Calculates the determinant of a 3x3 matrix.
determinant33 :: Matrix33 -> Float
{-# INLINE determinant33 #-}
determinant33 !mat = {-# SCC "determinant33" #-} det'
  where
    det' = f11*f22*f33 + f12*f23*f31 + f13*f21*f32 -
           f13*f22*f31 - f12*f21*f33 - f11*f23*f32
    f11 = n11 mat
    f21 = n21 mat
    f31 = n31 mat
    f12 = n12 mat
    f22 = n22 mat
    f32 = n32 mat
    f13 = n13 mat
    f23 = n23 mat
    f33 = n33 mat

-- | Calculats the inverse of a 3x3 matrix.
--
-- A matrix doesn't always have an inverse. In this case, the matrix values
-- will most likely end up being NaNs.
inverse33 :: Matrix33 -> Matrix33
{-# INLINE inverse33 #-}
inverse33 !mat = {-# SCC "inverse33" #-}
    Matrix33 { n11 = (f22*f33-f23*f32)*det'
            , n12 = (f13*f32-f12*f33)*det'
            , n13 = (f12*f23-f13*f22)*det'
            , n21 = (f23*f31-f21*f33)*det'
            , n22 = (f11*f33-f13*f31)*det'
            , n23 = (f13*f21-f11*f23)*det'
            , n31 = (f21*f32-f22*f31)*det'
            , n32 = (f12*f31-f11*f32)*det'
            , n33 = (f11*f22-f12*f21)*det' }
  where
    det' = 1.0 /
           (f11*f22*f33 + f12*f23*f31 + f13*f21*f32 -
            f13*f22*f31 - f12*f21*f33 - f11*f23*f32)
    f11 = n11 mat
    f21 = n21 mat
    f31 = n31 mat
    f12 = n12 mat
    f22 = n22 mat
    f32 = n32 mat
    f13 = n13 mat
    f23 = n23 mat
    f33 = n33 mat

-- | Calculates the determinant of a 4x4 matrix.
determinant44 :: Matrix44 -> Float
{-# INLINE determinant44 #-}
determinant44 !mat =  {-# SCC "determinant44" #-} det'
  where
    det' = b0*b11 - b1*b10 + b2*b9 + b3*b8 - b4*b7 + b5*b6

    f00 = m11 mat
    f10 = m21 mat
    f20 = m31 mat
    f30 = m41 mat
    f01 = m12 mat
    f11 = m22 mat
    f21 = m32 mat
    f31 = m42 mat
    f02 = m13 mat
    f12 = m23 mat
    f22 = m33 mat
    f32 = m43 mat
    f03 = m14 mat
    f13 = m24 mat
    f23 = m34 mat
    f33 = m44 mat

    b0  = f00 * f11 - f01 * f10
    b1  = f00 * f12 - f02 * f10
    b2  = f00 * f13 - f03 * f10
    b3  = f01 * f12 - f02 * f11
    b4  = f01 * f13 - f03 * f11
    b5  = f02 * f13 - f03 * f12
    b6  = f20 * f31 - f21 * f30
    b7  = f20 * f32 - f22 * f30
    b8  = f20 * f33 - f23 * f30
    b9  = f21 * f32 - f22 * f31
    b10 = f21 * f33 - f23 * f31
    b11 = f22 * f33 - f23 * f32

-- | Multiplies two 3x3 matrices together.
multiply33 :: Matrix33 -> Matrix33 -> Matrix33
{-# INLINE multiply33 #-}
multiply33 !mat1 !mat2 = {-# SCC "multiply33" #-}
    Matrix33 { n11 = s11*f11 + s21*f12 + s31*f13
            , n21 = s11*f21 + s21*f22 + s31*f23
            , n31 = s11*f31 + s21*f32 + s31*f33
            , n12 = s12*f11 + s22*f12 + s32*f13
            , n22 = s12*f21 + s22*f22 + s32*f23
            , n32 = s12*f31 + s22*f32 + s32*f33
            , n13 = s13*f11 + s23*f12 + s33*f13
            , n23 = s13*f21 + s23*f22 + s33*f23
            , n33 = s13*f31 + s23*f32 + s33*f33 }
  where
    f11 = n11 mat1
    f21 = n21 mat1
    f31 = n31 mat1
    f12 = n12 mat1
    f22 = n22 mat1
    f32 = n32 mat1
    f13 = n13 mat1
    f23 = n23 mat1
    f33 = n33 mat1
    s11 = n11 mat2
    s21 = n21 mat2
    s31 = n31 mat2
    s12 = n12 mat2
    s22 = n22 mat2
    s32 = n32 mat2
    s13 = n13 mat2
    s23 = n23 mat2
    s33 = n33 mat2

-- | Multiplies two 4x4 matrices together.
multiply44 :: Matrix44 -> Matrix44 -> Matrix44
{-# INLINE multiply44 #-}
multiply44 !mat1 !mat2 = {-# SCC "multiply44" #-}
    Matrix44 { m11 = s11*f11 + s21*f12 + s31*f13 + s41*f14
            , m21 = s11*f21 + s21*f22 + s31*f23 + s41*f24
            , m31 = s11*f31 + s21*f32 + s31*f33 + s41*f34
            , m41 = s11*f41 + s21*f42 + s31*f43 + s41*f44
            , m12 = s12*f11 + s22*f12 + s32*f13 + s42*f14
            , m22 = s12*f21 + s22*f22 + s32*f23 + s42*f24
            , m32 = s12*f31 + s22*f32 + s32*f33 + s42*f34
            , m42 = s12*f41 + s22*f42 + s32*f43 + s42*f44
            , m13 = s13*f11 + s23*f12 + s33*f13 + s43*f14
            , m23 = s13*f21 + s23*f22 + s33*f23 + s43*f24
            , m33 = s13*f31 + s23*f32 + s33*f33 + s43*f34
            , m43 = s13*f41 + s23*f42 + s33*f43 + s43*f44
            , m14 = s14*f11 + s24*f12 + s34*f13 + s44*f14
            , m24 = s14*f21 + s24*f22 + s34*f23 + s44*f24
            , m34 = s14*f31 + s24*f32 + s34*f33 + s44*f34
            , m44 = s14*f41 + s24*f42 + s34*f43 + s44*f44 }
  where
    f11 = m11 mat1
    f21 = m21 mat1
    f31 = m31 mat1
    f41 = m41 mat1
    f12 = m12 mat1
    f22 = m22 mat1
    f32 = m32 mat1
    f42 = m42 mat1
    f13 = m13 mat1
    f23 = m23 mat1
    f33 = m33 mat1
    f43 = m43 mat1
    f14 = m14 mat1
    f24 = m24 mat1
    f34 = m34 mat1
    f44 = m44 mat1
    s11 = m11 mat2
    s21 = m21 mat2
    s31 = m31 mat2
    s41 = m41 mat2
    s12 = m12 mat2
    s22 = m22 mat2
    s32 = m32 mat2
    s42 = m42 mat2
    s13 = m13 mat2
    s23 = m23 mat2
    s33 = m33 mat2
    s43 = m43 mat2
    s14 = m14 mat2
    s24 = m24 mat2
    s34 = m34 mat2
    s44 = m44 mat2

-- | Returns the Euclidean distance between two 3x3 matrices, where the
-- matrices are taken to be 9-vectors.
--
-- This can be used as a rough estimate how close, or similar two matrices are
-- to each other.
distance33 :: Matrix33 -> Matrix33 -> Float
{-# INLINE distance33 #-}
distance33 !mat1 !mat2 = {-# SCC "distance33" #-}
    sqrt $ (f11-s11)**2+
           (f12-s12)**2+
           (f13-s13)**2+
           (f21-s21)**2+
           (f22-s22)**2+
           (f23-s23)**2+
           (f31-s31)**2+
           (f32-s32)**2+
           (f33-s33)**2
  where
    f11 = n11 mat1
    f21 = n21 mat1
    f31 = n31 mat1
    f12 = n12 mat1
    f22 = n22 mat1
    f32 = n32 mat1
    f13 = n13 mat1
    f23 = n23 mat1
    f33 = n33 mat1
    s11 = n11 mat2
    s21 = n21 mat2
    s31 = n31 mat2
    s12 = n12 mat2
    s22 = n22 mat2
    s32 = n32 mat2
    s13 = n13 mat2
    s23 = n23 mat2
    s33 = n33 mat2

-- | Returns the Euclidean distance between two 4x4 matrices, where the
-- matrices are taken to be 9-vectors.
--
-- This can be used as a rough estimate how close, or similar two matrices are
-- to each other.
distance44 :: Matrix44 -> Matrix44 -> Float
{-# INLINE distance44 #-}
distance44 !mat1 !mat2 = {-# SCC "distance44" #-}
    sqrt $ (f11-s11)**2+
           (f12-s12)**2+
           (f13-s13)**2+
           (f14-s14)**2+
           (f21-s21)**2+
           (f22-s22)**2+
           (f23-s23)**2+
           (f24-s24)**2+
           (f31-s31)**2+
           (f32-s32)**2+
           (f33-s33)**2+
           (f34-s34)**2+
           (f41-s41)**2+
           (f42-s42)**2+
           (f43-s43)**2+
           (f44-s44)**2
  where
    f11 = m11 mat1
    f21 = m21 mat1
    f31 = m31 mat1
    f41 = m41 mat1
    f12 = m12 mat1
    f22 = m22 mat1
    f32 = m32 mat1
    f42 = m42 mat1
    f13 = m13 mat1
    f23 = m23 mat1
    f33 = m33 mat1
    f43 = m43 mat1
    f14 = m14 mat1
    f24 = m24 mat1
    f34 = m34 mat1
    f44 = m44 mat1
    s11 = m11 mat2
    s21 = m21 mat2
    s31 = m31 mat2
    s41 = m41 mat2
    s12 = m12 mat2
    s22 = m22 mat2
    s32 = m32 mat2
    s42 = m42 mat2
    s13 = m13 mat2
    s23 = m23 mat2
    s33 = m33 mat2
    s43 = m43 mat2
    s14 = m14 mat2
    s24 = m24 mat2
    s34 = m34 mat2
    s44 = m44 mat2

-- | Constructs a perspective projection matrix.
perspective44 :: Float    -- ^ Field of view in radians.
              -> Float    -- ^ Aspect ratio.
              -> Float    -- ^ Near plane distance.
              -> Float    -- ^ Far plane distance.
              -> Matrix44
{-# INLINE perspective44 #-}
perspective44 !fov_y !aspect_ratio !near !far = {-# SCC "perspective44" #-}
    frustum44 (-right) right (-top) top near far
  where
    top = near * tan fov_y
    right = top * aspect_ratio


-- | Constructs a perspective projection matrix by frustum planes.
frustum44 :: Float     -- ^ Left plane.
          -> Float     -- ^ Right plane.
          -> Float     -- ^ Bottom plane.
          -> Float     -- ^ Top plane.
          -> Float     -- ^ Near plane.
          -> Float     -- ^ Far plane.
          -> Matrix44
{-# INLINE frustum44 #-}
frustum44 !left !right !bottom !top !near !far = {-# SCC "frustum44" #-}
    zero44 { m11 = n2 * rl
           , m22 = n2 * tb
           , m13 = (right + left) * rl
           , m23 = (top + bottom) * tb
           , m33 = (far + near) * nf
           , m43 = -1.0
           , m34 = far * n2 * nf }
  where
    rl = 1.0 / (right - left)
    tb = 1.0 / (top - bottom)
    nf = 1.0 / (near - far)
    n2 = near * 2.0

-- | Constructs an orthogonal projection matrix by planes.
ortho44 :: Float     -- ^ Left plane.
        -> Float     -- ^ Right plane.
        -> Float     -- ^ Bottom plane.
        -> Float     -- ^ Top plane.
        -> Float     -- ^ Near plane.
        -> Float     -- ^ Far plane.
        -> Matrix44
{-# INLINE ortho44 #-}
ortho44 !left !right !bottom !top !near !far = {-# SCC "ortho44" #-}
    zero44 { m11 = (-2.0) * lr
           , m22 = (-2.0) * bt
           , m33 = 2.0 * nf
           , m14 = (left + right) * lr
           , m24 = (top + bottom) * bt
           , m34 = (far + near) * nf
           , m44 = 1.0 }
  where
    lr = 1.0 / (left - right)
    bt = 1.0 / (bottom - top)
    nf = 1.0 / (near - far)

-- | Constructs a look-at view matrix.
lookat44 :: Vector3       -- ^ Eye position.
         -> Vector3       -- ^ Center position (that is, the point we are going
                          --   to stare at).
         -> Vector3       -- ^ Up vector. You probably want to normalize this.
         -> Matrix44
{-# INLINE lookat44 #-}
lookat44 eye@(Vector3 !eyex !eyey !eyez) !center (Vector3 !ux !uy !uz)
    | ec_len < 0.000001 = identity44
    | otherwise = {-# SCC "lookat44" #-}
        Matrix44 { m11 = xx, m21 = yx, m31 = ecx, m41 = 0.0
                , m12 = xy, m22 = yy, m32 = ecy, m42 = 0.0
                , m13 = xz, m23 = yz, m33 = ecz, m43 = 0.0
                , m14 = -(xx * eyex + xy * eyey + xz * eyez)
                , m24 = -(yx * eyex + yy * eyey + yz * eyez)
                , m34 = -(ecx * eyex + ecy * eyey + ecz * eyez)
                , m44 = 1.0 }
  where
    ec = eye `minus3` center
    Vector3 ecx ecy ecz = normalize3 ec
    ec_len = length3 ec

    yvec = Vector3 (ecy*xz - ecz*xy)
                   (ecz*xx - ecx*xz)
                   (ecx*xy - ecy*xx)
    Vector3 yx yy yz =
        if length3 yvec == 0.0
          then Vector3 0 0 0
          else normalize3 yvec

    xvec = Vector3 (uy*ecz - uz*ecy)
                   (uz*ecx - ux*ecz)
                   (ux*ecy - uy*ecx)
    Vector3 xx xy xz =
        if length3 xvec == 0.0
          then Vector3 0 0 0
          else normalize3 xvec

-- | Normalizes a 3-vector to unit length.
--
-- If the vector is a zero vector then this probably gives you a vector with
-- NaNs as values.
normalize3 :: Vector3 -> Vector3
{-# INLINE normalize3 #-}
normalize3 v@(Vector3 !x !y !z) = {-# SCC "normalize3" #-}
    Vector3 (x*ilen) (y*ilen) (z*ilen)
  where
    ilen = 1.0 / length3 v

-- | Returns the Euclidean distance between to 3-vectors.
distance3 :: Vector3 -> Vector3 -> Float
{-# INLINE distance3 #-}
distance3 (Vector3 !x1 !y1 !z1) (Vector3 !x2 !y2 !z2) = {-# SCC "distance3" #-}
    sqrt $ (x2-x1)**2 + (y2-y1)**2 + (z2-z1)**2

-- | Returns the length of a 3-vector.
length3 :: Vector3 -> Float
{-# INLINE length3 #-}
length3 (Vector3 !x !y !z) = {-# SCC "length3" #-} sqrt $ x**2 + y**2 + z**2

-- | Sums two 3-vectors together.
plus3 :: Vector3 -> Vector3 -> Vector3
{-# INLINE plus3 #-}
plus3 (Vector3 !x1 !y1 !z1) (Vector3 !x2 !y2 !z2) = {-# SCC "plus3" #-}
    Vector3 (x1+x2) (y1+y2) (z1+z2)

-- | Subtracts the second 3-vector from the first.
minus3 :: Vector3 -> Vector3 -> Vector3
{-# INLINE minus3 #-}
minus3 (Vector3 !x1 !y1 !z1) (Vector3 !x2 !y2 !z2) = {-# SCC "minus3" #-}
    Vector3 (x1-x2) (y1-y2) (z1-z2)

-- | Negates all components of a 3-vector.
negative3 :: Vector3 -> Vector3
{-# INLINE negative3 #-}
negative3 (Vector3 !x !y !z) = {-# SCC "negative3" #-} Vector3 (-x) (-y) (-z)

-- | Multiplies all components of a 3-vector with a scalar.
scalarMultiply3 :: Float -> Vector3 -> Vector3
{-# INLINE scalarMultiply3 #-}
scalarMultiply3 scalar (Vector3 !x !y !z) = {-# SCC "scalarMultiply3" #-}
    Vector3 (x*scalar) (y*scalar) (z*scalar)

-- | Modify a 4x4 matrix to scale everything by given vector.
scale44 :: Vector3         -- ^ The scale vector.
       -> Matrix44         -- ^ The matrix to modify.
       -> Matrix44
{-# INLINE scale44 #-}
scale44 (Vector3 !x !y !z) !mat = {-# SCC "scale44" #-}
    mat { m11 = f11*x
        , m21 = f21*x
        , m31 = f31*x
        , m41 = f41*x
        , m12 = f12*y
        , m22 = f22*y
        , m32 = f32*y
        , m42 = f42*y
        , m13 = f13*z
        , m23 = f23*z
        , m33 = f33*z
        , m43 = f43*z }
  where
    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f41 = m41 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f42 = m42 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f43 = m43 mat

-- | Transposes a 3x3 matrix.
transpose33 :: Matrix33 -> Matrix33
{-# INLINE transpose33 #-}
transpose33 !mat = {-# SCC "transpose33" #-}
    Matrix33 { n11 = f11
              , n12 = f21
              , n13 = f31
              , n21 = f12
              , n22 = f22
              , n23 = f32
              , n31 = f13
              , n32 = f23
              , n33 = f33 }
  where
    f11 = n11 mat
    f21 = n21 mat
    f31 = n31 mat
    f12 = n12 mat
    f22 = n22 mat
    f32 = n32 mat
    f13 = n13 mat
    f23 = n23 mat
    f33 = n33 mat

-- | Transposes a 4x4 matrix.
transpose44 :: Matrix44 -> Matrix44
{-# INLINE transpose44 #-}
transpose44 !mat = {-# SCC "transpose44" #-}
    Matrix44 { m11 = f11
            , m12 = f21
            , m13 = f31
            , m14 = f41
            , m21 = f12
            , m22 = f22
            , m23 = f32
            , m24 = f42
            , m31 = f13
            , m32 = f23
            , m33 = f33
            , m34 = f43
            , m41 = f14
            , m42 = f24
            , m43 = f34
            , m44 = f44 }
  where
    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f41 = m41 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f42 = m42 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f43 = m43 mat
    f14 = m14 mat
    f24 = m24 mat
    f34 = m34 mat
    f44 = m44 mat

-- | Modifies a 4x4 matrix to include translation.
--
-- This is the same as multiplying a 4x4 matrix with a translation matrix.
translate44 :: Vector3      -- ^ The translation vector.
           -> Matrix44      -- ^ The matrix to modify.
           -> Matrix44
{-# INLINE translate44 #-}
translate44 (Vector3 !x !y !z) !mat = {-# SCC "translate44" #-}
    mat { m14 = f11*x + f12*y + f13*z + f14
        , m24 = f21*x + f22*y + f23*z + f24
        , m34 = f31*x + f32*y + f33*z + f34
        , m44 = f41*x + f42*y + f43*z + f44 }
  where
    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f41 = m41 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f42 = m42 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f43 = m43 mat
    f14 = m14 mat
    f24 = m24 mat
    f34 = m34 mat
    f44 = m44 mat

-- | Modifies a 4x4 matrix to include rotation as specified by an axis-angle
-- representation.
--
-- This is the same as multiplying a matrix with a rotation matrix.
rotate44 :: Float         -- ^ The angle, how much to rotate. In radians.
        -> Vector3       -- ^ The rotation axis.
        -> Matrix44       -- ^ The matrix to modify.
        -> Matrix44
{-# INLINE rotate44 #-}
rotate44 !radians !axis !mat = {-# SCC "rotate44" #-}
    mat { m11 = f11*r11 + f21*r12 + f31*r13
        , m21 = f12*r11 + f21*r12 + f32*r13
        , m31 = f13*r11 + f23*r12 + f33*r13
        , m41 = f14*r11 + f24*r12 + f34*r13
        , m12 = f11*r21 + f21*r22 + f31*r23
        , m22 = f12*r21 + f22*r22 + f32*r23
        , m32 = f13*r21 + f23*r22 + f33*r23
        , m42 = f14*r21 + f24*r22 + f34*r23
        , m13 = f11*r31 + f21*r32 + f31*r33
        , m23 = f12*r31 + f22*r32 + f32*r33
        , m33 = f13*r31 + f23*r32 + f33*r33
        , m43 = f14*r31 + f24*r32 + f31*r33 }
  where
    r11 = x*x*t+cosf
    r12 = y*x*t+z*sinf
    r13 = z*x*t-y*sinf
    r21 = x*y*t-z*sinf
    r22 = y*y*t+cosf
    r23 = z*y*t+x*sinf
    r31 = x*z*t+y*sinf
    r32 = y*z*t-x*sinf
    r33 = z*z*t+cosf

    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f14 = m14 mat
    f24 = m24 mat
    f34 = m34 mat

    t = 1 - cosf
    sinf = sin radians
    cosf = cos radians
    (Vector3 !x !y !z) = normalize3 axis

-- | Transforms a 3-vector with a 4x4 matrix.
--
-- This would be the same as transforming a 4-vector with a 4x4 matrix but the
-- fourth component is taken to be 1 and is not returned.
vector3Transform44 :: Matrix44 -> Vector3 -> Vector3
{-# INLINE vector3Transform44 #-}
vector3Transform44 !mat (Vector3 !x !y !z) = {-# SCC "vector3Transform44" #-}
    Vector3 { x = f11*x + f12*y + f13*z + f14
            , y = f21*x + f22*y + f23*z + f24
            , z = f31*x + f32*y + f33*z + f34 }
  where
    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f14 = m14 mat
    f24 = m24 mat
    f34 = m34 mat

-- | Returns the cross product between two 3-vectors.
cross3 :: Vector3 -> Vector3 -> Vector3
{-# INLINE cross3 #-}
cross3 (Vector3 !x1 !y1 !z1) (Vector3 !x2 !y2 !z2) = {-# SCC "cross3" #-}
    Vector3 { x = y1*z2 - z1*y2
            , y = z1*x2 - x1*z2
            , z = x1*y2 - y1*x2 }

-- | Returns the angle, in radians, between two 3-vectors.
--
-- The vectors are normalized by this function so you need not to do that
-- yourself.
angle3 :: Vector3 -> Vector3 -> Float
{-# INLINE angle3 #-}
angle3 v1 v2 = {-# SCC "angle3" #-} acos $ n1 `dot3` n2
  where
    n1 = normalize3 v1
    n2 = normalize3 v2

-- | Returns the dot product between two 3-vectors.
dot3 :: Vector3 -> Vector3 -> Float
{-# INLINE dot3 #-}
dot3 (Vector3 !x1 !y1 !z1) (Vector3 !x2 !y2 !z2) = {-# SCC "dot3" #-}
    x1*x2 + y1*y2 + z1*z2

-- | Transforms a 3-vector into a tuple.
toTuple3 :: Vector3 -> (Float, Float, Float)
{-# INLINE toTuple3 #-}
toTuple3 (Vector3 !x !y !z) = {-# SCC "toTuple3" #-} (x, y, z)

-- | Transforms a tuple into a 3-vector.
fromTuple3 :: (Float, Float, Float) -> Vector3
{-# INLINE fromTuple3 #-}
fromTuple3 (!x, !y, !z) = {-# SCC "fromTuple3" #-}
    Vector3 { x = x, y = y, z = z }

-- | Returns a vector where all components are 0.
zero3 :: Vector3
{-# INLINE zero3 #-}
zero3 = {-# SCC "zero3" #-} Vector3 { x = 0, y = 0, z = 0 }

-- | Transforms a 4x4 matrix to a list of floats.
--
-- The list follows the same order as the `Storable` instance does for
-- `Matrix44` floating point values.  The list will always have 16 elements.
toList4 :: Matrix44 -> [Float]
toList4 mat = {-# SCC "toList4" #-}
    (\f -> f mat) <$>
        [m11, m21, m31, m41
        ,m12, m22, m32, m42
        ,m13, m23, m33, m43
        ,m14, m24, m34, m44]

-- | Construct a quaternion out of 4 values.
quaternion :: Float           -- ^ The x-component.
           -> Float           -- ^ The y-component.
           -> Float           -- ^ The z-component.
           -> Float           -- ^ The w-component.
           -> Quaternion
{-# INLINE quaternion #-}
quaternion !x !y !z !w = {-# SCC "quaternion" #-}
    Quaternion { qx = x, qy = y, qz = z, qw = w }

-- | Turns a quaternion into a 4-tuple.
toTupleq :: Quaternion -> (Float, Float, Float, Float)
{-# INLINE toTupleq #-}
toTupleq (Quaternion !x !y !z !w) = {-# SCC "toTupleq" #-} (x, y, z, w)

-- | Turns a 4-tuple into a quaternion.
fromTupleq :: (Float, Float, Float, Float) -> Quaternion
{-# INLINE fromTupleq #-}
fromTupleq (!x, !y, !z, !w) = {-# SCC "fromTupleq" #-} Quaternion x y z w

-- | \"canonicalizes\" a quaternion.
--
-- Some rotations have different representations as a quaternion. This function
-- canonicalizes the quaternion so that those rotations are the same.
--
-- Don't rely on this. This is used in some automatic tests to see that the
-- quaternions work correctly.
canonicalizeq :: Quaternion -> Quaternion
{-# INLINE canonicalizeq #-}
canonicalizeq q@(Quaternion !x !y !z !w) = {-# SCC "canonicalizeq" #-}
    canonicalizeq'
  where
    canonicalizeq'
        | w > 0 = q
        | otherwise = Quaternion (-x) (-y) (-z) (-w)

-- | Normalizes a quaternion to unit length.
normalizeq :: Quaternion -> Quaternion
{-# INLINE normalizeq #-}
normalizeq (Quaternion !x !y !z !w) = {-# SCC "normalizeq" #-}
    Quaternion (x*t) (y*t) (z*t) (w*t)
  where
    t = 1.0 / sqrt (x*x + y*y + z*z + w*w)

-- | Returns the Euclidean distance between two quaternions.
distanceq :: Quaternion -> Quaternion -> Float
{-# INLINE distanceq #-}
distanceq (Quaternion !x1 !y1 !z1 !w1)
          (Quaternion !x2 !y2 !z2 !w2) = {-# SCC "distanceq" #-}
    sqrt $ (x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2 + (w1-w2)**2

-- | Returns the length of a quaternion.
lengthq :: Quaternion -> Float
{-# INLINE lengthq #-}
lengthq (Quaternion !x !y !z !w) = {-# SCC "lengthq" #-}
    sqrt $ x*x + y*y + z*z + w*w

-- | Turns an axis angle rotation into a quaternion.
axisAngleToQuaternion :: Float      -- ^ The angle, in radians.
                      -> Vector3    -- ^ The rotation axis.
                      -> Quaternion
{-# INLINE axisAngleToQuaternion #-}
axisAngleToQuaternion !radians !vec = {-# SCC "axisAngleToQuaternion" #-}
    Quaternion { qx = x * sin_angle
               , qy = y * sin_angle
               , qz = z * sin_angle
               , qw = cos hangle }
  where
    Vector3 x y z = normalize3 vec
    sin_angle = sin hangle
    hangle = radians * 0.5

-- | Returns a quaternion where all the elements are zero.
zeroq :: Quaternion
{-# INLINE zeroq #-}
zeroq = {-# SCC "zeroq" #-} Quaternion 0 0 0 0

-- | Turns the quaternion into a 4x4 rotation matrix.
quaternionToMatrix44 :: Quaternion -> Matrix44
{-# INLINE quaternionToMatrix44 #-}
quaternionToMatrix44 !q = {-# SCC "quaternionToMatrix44" #-}
    identity44 { m11 = 1 - yy2 - zz2
               , m22 = 1 - xx2 - zz2
               , m33 = 1 - xx2 - yy2

               , m32 = yz2 - wx2
               , m23 = yz2 + wx2
               , m21 = xy2 - wz2
               , m12 = xy2 + wz2
               , m13 = xz2 - wy2
               , m31 = xz2 + wy2 }
  where
    Quaternion x y z w = normalizeq q
    x2 = x+x
    y2 = y+y
    z2 = z+z
    xx2 = x*x2
    yy2 = y*y2
    zz2 = z*z2
    yz2 = y*z2
    wx2 = w*x2
    xy2 = x*y2
    wz2 = w*z2
    xz2 = x*z2
    wy2 = w*y2

-- | Extracts rotation from a 4x4 matrix and returns it as a quaternion.
--
-- Note that
--
-- @
--     matrix44ToQuaternion . quaternionToMatrix44
-- @
--
-- may not be the identity function. The signs on the quaternion components may
-- be different and because the floating point calculation is not completely
-- precise, the values are often slightly different than they were originally.
matrix44ToQuaternion :: Matrix44 -> Quaternion
{-# INLINE matrix44ToQuaternion #-}
matrix44ToQuaternion !mat = {-# SCC "matrix44ToQuaternion" #-}
    matrix44ToQuaternion'
  where
    matrix44ToQuaternion'
        | trace > 0 =
            let t = trace + 1
                s = 0.5 * isqrt t
             in Quaternion { qw = s * t
                           , qz = (f12 - f21) * s
                           , qy = (f31 - f13) * s
                           , qx = (f23 - f32) * s }

        | f11 > f22 && f11 > f33 =
            let t = f11 - f22 - f33 + 1
                s = 0.5 * isqrt t
             in Quaternion { qx = s * t
                           , qy = (f12 + f21) * s
                           , qz = (f31 + f13) * s
                           , qw = (f23 - f32) * s }

        | f22 > f33 =
            let t = (-f11) + f22 - f33 + 1
                s = 0.5 * isqrt t
             in Quaternion { qy = s * t
                           , qx = (f12 + f21) * s
                           , qw = (f31 - f13) * s
                           , qz = (f23 + f32) * s }

        | otherwise =
            let t = (-f11) - f22 + f33 + 1
                s = 0.5 * isqrt t
             in Quaternion { qz = s * t
                           , qw = (f12 - f21) * s
                           , qx = (f31 + f13) * s
                           , qy = (f23 + f32) * s }

    trace = f11 + f22 + f33
    isqrt = (1.0 /) . sqrt

    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat

-- | Returns the identity quaternion. It won't rotate anything.
identityq :: Quaternion
{-# INLINE identityq #-}
identityq = {-# SCC "identityq" #-} quaternion 0 0 0 1

{-# ANN vector3_1ToQuaternion ("HLint: ignore Use camelCase" :: String) #-}
-- | Turns a `Vector3` and an extra value to a quaternion.
vector3_1ToQuaternion :: Vector3 -> Float -> Quaternion
{-# INLINE vector3_1ToQuaternion #-}
vector3_1ToQuaternion (Vector3 x y z) = quaternion x y z

-- | Multiplies two quaternions together.
multiplyq :: Quaternion -> Quaternion -> Quaternion
multiplyq (Quaternion !x1 !y1 !z1 !w1)
          (Quaternion !x2 !y2 !z2 !w2) = {-# SCC "multiplyq" #-}
    Quaternion { qw = w1*w2 - x1*x2 - y1*y2 - z1*z2
               , qx = w1*x2 + x1*w2 + y1*z2 - z1*y2
               , qy = w1*y2 - x1*z2 + y1*w2 + z1*x2
               , qz = w1*z2 + x1*y2 - y1*x2 + z1*w2 }

pad :: Int -> String -> String
pad wanted_len str
  | len < wanted_len = str ++ replicate (wanted_len - len) ' '
  | otherwise = str
  where
    len = length str

-- | Returns a \"pretty\" string that represents a 4x4 matrix.
--
-- This could be useful for debugging (and has been used as such in the
-- development of Caramia). The default `Show` instance for `Matrix44` is
-- machine-readable but annoying for humans to read. This function returns a
-- somewhat more human-readable string that you can display.
--
-- The string will contain newlines.
prettyShow :: Matrix44 -> String
prettyShow mat =
    lines [[f11,f12,f13,f14],[f21,f22,f23,f24],
           [f31,f32,f33,f34],[f41,f42,f43,f44]]
  where
    lines = concatMap ((++ "\n") . line)
    line marks =
        "[ " ++ concatMap (("  " ++) . pad wanted_len . show) marks ++ " ]"
    wanted_len = 1 + maximum (map (length . show) $ toList4 mat)

    f11 = m11 mat
    f21 = m21 mat
    f31 = m31 mat
    f41 = m41 mat
    f12 = m12 mat
    f22 = m22 mat
    f32 = m32 mat
    f42 = m42 mat
    f13 = m13 mat
    f23 = m23 mat
    f33 = m33 mat
    f43 = m43 mat
    f14 = m14 mat
    f24 = m24 mat
    f34 = m34 mat
    f44 = m44 mat

