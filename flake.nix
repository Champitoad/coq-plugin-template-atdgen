{
  description="Testing atdgen integration with Coq 8.16 dynamic loading feature";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.05";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
    ocamlPackages = pkgs.ocaml-ng.ocamlPackages_4_14;
    coq = pkgs.coq.override {
      version = "8.16";
      coq-version = "8.16";
      customOCamlPackages = ocamlPackages;
    };
    coqPackages = pkgs.mkCoqPackages coq;

    pkg = ocamlPackages.callPackage ./default.nix {
      coq_8_16 = coq;
      atdgen = ocamlPackages.atdgen;
    };

    shell = pkgs.mkShell {
      # Build tools
      nativeBuildInputs = builtins.attrValues {
        inherit (ocamlPackages)
          ocaml 
          findlib
          dune_2
          # ocaml-lsp
          merlin
          ;
      };
      # Dependencies
      inputsFrom = [ pkg ];
    };
  in {
    devShells.x86_64-linux.default = shell;
    packages.x86_64-linux = {
      coq-plugin-template-atdgen = pkg;
      default = pkg;
    };
  };
}
