{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";

    gelos-theme.url = "github:gelos-icmc/beamer-theme";
    gelos-theme.inputs.nixpkgs.follows = "nixpkgs";
    gelos-theme.inputs.systems.follows = "systems";
  };

  outputs = {
    self,
    systems,
    nixpkgs,
    gelos-theme,
  }: let
    eachSystem = f:
      nixpkgs.lib.genAttrs (import systems) (system: f system nixpkgs.legacyPackages.${system});
  in {
    packages = eachSystem (system: pkgs: let
      texlive = gelos-theme.packages.${system}.texlive-env;
    in {
      default = pkgs.stdenvNoCC.mkDerivation {
        pname = "workshop-git";
        version = self.shortRev or "dirty";
        src = ./.;
        buildInputs = [texlive pkgs.pandoc];
        buildPhase = "pandoc -t beamer workshop.md -o workshop.pdf";
        installPhase = "install -D *.pdf -t $out";
      };
    });
    formatter = eachSystem (system: pkgs: pkgs.alejandra);
  };
}
