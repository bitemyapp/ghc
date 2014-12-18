{-# LANGUAGE NoImplicitPrelude #-}

module GHC.Err ( error, undefined, absentErr
  ) where

import GHC.Types( Char )

error :: [Char] -> a

undefined :: a

absentErr :: a

