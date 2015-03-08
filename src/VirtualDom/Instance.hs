module VirtualDom.Instance where

import GHCJS.Prim

instance Eq (JSRef a) where
  (==) = eqRef

foreign import javascript unsafe "$1 === $2"
  js_eqRef :: JSRef a -> JSRef b -> Bool
  
eqRef :: JSRef a -> JSRef b -> Bool
eqRef x y = js_eqRef x y
{-# INLINE eqRef #-}
