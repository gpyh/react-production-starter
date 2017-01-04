let
  dir = "react-production-starter";
in

with (import <nixpkgs> {});
stdenv.mkDerivation {
  name = "react-production-starter";
  buildInputs = [
    nodejs-6_x
    python2 # for node-gyp
  ];
  shellHook = ''
    export PATH=${dir}/node_modules/.bin:$PATH
  '';
}

