{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";

    gelos-theme.url = "github:gelos-icmc/beamer-theme";
    gelos-theme.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { systems, nixpkgs, gelos-theme, ...}: let
    eachSystem = nixpkgs.lib.genAttrs (import systems);
  in {
    packages = eachSystem (system: {
      default = gelos-theme.packages.${system}.mkGelosSlides {
        pname = "workshop-git";
        src = ./.;
      };
    });
  };
}
