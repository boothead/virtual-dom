{ cabal, aeson, ghcjsBase, ghcjsDom, ghcjsPrim, lens, stdenv }:
cabal.mkDerivation (self: {
  pname = "virtual-dom";
  version = "0.1";
  src = ./.;
  buildDepends = [ aeson ghcjsBase ghcjsDom lens ];
  meta = {
    license = stdenv.lib.licenses.bsd3;
  };
})
