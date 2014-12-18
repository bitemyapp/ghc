{-# LANGUAGE NoImplicitPrelude #-}

{-
Module imports form a cycle:
         module ‘Data.Maybe’ (libraries/base/Data/Maybe.hs)
        imports ‘GHC.Base’ (libraries/base/GHC/Base.hs)
  which imports ‘GHC.Err’ (libraries/base/GHC/Err.hs)
  which imports ‘GHC.Stack’ (libraries/base/dist-install/build/GHC/Stack.hs)
  which imports ‘GHC.Foreign’ (libraries/base/GHC/Foreign.hs)
  which imports ‘Data.Maybe’ (libraries/base/Data/Maybe.hs)
-}

module GHC.Stack ( ccsToStrings, getCurrentCCS, renderStack
  ) where

import GHC.Types( Char )
import GHC.Ptr
import System.IO (IO)

data CostCentreStack

ccsToStrings :: Ptr CostCentreStack -> IO [[Char]]
getCurrentCCS :: dummy -> IO (Ptr CostCentreStack)
renderStack :: [[Char]] -> String
