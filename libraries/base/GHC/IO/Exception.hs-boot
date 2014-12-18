{-# LANGUAGE Trustworthy #-}
{-# LANGUAGE NoImplicitPrelude #-}

module GHC.IO.Exception where

import GHC.Base
import {-# SOURCE #-} GHC.Exception

data IOException
instance Exception IOException

type IOError = IOException
userError :: String  -> IOError
unsupportedOperation :: IOError
