{-# LANGUAGE NoImplicitPrelude #-}

module Main ( main ) where

import Graphics.Caramia.Color
import Graphics.Caramia.Prelude
import Test.Framework
import Test.Framework.Providers.QuickCheck2

main :: IO ()
main = defaultMain tests

tests :: [Test]
tests = [
    testProperty "floatToWord8 . word8ToFloat = id" floatwordid
    ]

floatwordid :: Word8 -> Bool
floatwordid x = floatToWord8 (word8ToFloat x) == x

