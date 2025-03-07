{ actionlint
, alejandra
, ansible-lint
, cabal-fmt
, callPackage
, cargo
, clang-tools
, clippy
, deadnix
, dhall
, elmPackages
, git
, gitAndTools
, hadolint
, haskell
, haskellPackages
, hindent
, hlint
, hpack
, html-tidy
, hunspell
, luaPackages
, niv
, nix-linter
, nixfmt
, nixpkgs-fmt
, nodePackages
, ormolu
, python39Packages
, runCommand
, rustfmt
, shellcheck
, shfmt
, statix
, stylish-haskell
, stylua
, texlive
, writeScript
, writeText
, go
}:

{
  inherit actionlint alejandra cabal-fmt cargo clang-tools clippy deadnix dhall hadolint hindent hlint hpack html-tidy nix-linter nixfmt nixpkgs-fmt ormolu rustfmt shellcheck shfmt statix stylish-haskell stylua go;
  inherit (elmPackages) elm-format elm-review elm-test;
  inherit (haskellPackages) brittany fourmolu;
  inherit (luaPackages) luacheck;
  inherit (nodePackages) eslint markdownlint-cli prettier;
  inherit (python39Packages) ansible-lint yamllint;
  cabal2nix-dir = callPackage ./cabal2nix-dir { cabal2nix = haskellPackages.cabal2nix; };
  hpack-dir = callPackage ./hpack-dir { hpack = haskellPackages.hpack; };
  hunspell = callPackage ./hunspell { };
  purty = callPackage ./purty { purty = nodePackages.purty; };
  terraform-fmt = callPackage ./terraform-fmt { };
  latexindent = texlive.combined.scheme-medium;
  chktex = texlive.combined.scheme-medium;
}
