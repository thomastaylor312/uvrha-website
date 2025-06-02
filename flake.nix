{
  description = "Build my personal blog";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        checks = { };

        packages = { };

        apps = { };

        devShells.default =
          pkgs.mkShell { packages = with pkgs; [ go hugo git wget ]; };
      });
}
