{-# LANGUAGE KindSignatures #-}

module ExposedModule where

import Data.List (or)

import OtherModule

data WithGADTs :: * -> * where
  HasBool :: Bool -> WithGADTs Bool
  IsUnit  ::         WithGADTs ()

c :: Bool
c = or [a, b, a && b, a || b]
