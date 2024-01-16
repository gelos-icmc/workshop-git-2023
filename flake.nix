{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    systems.url = "github:nix-systems/default";
  };

  outputs = { self, systems, nixpkgs }:
    let
      eachSystem = f: nixpkgs.lib.genAttrs
        (import systems) (system: f nixpkgs.legacyPackages.${system});
    in
    {
      packages = eachSystem (pkgs: {
        default = pkgs.stdenvNoCC.mkDerivation {
          pname = "workshop-git";
          version = self.shortRev or "dirty";
          src = ./.;
          buildInputs = [ pkgs.pandoc pkgs.texlive.combined.scheme-small ];
          installPhase = ''
            install -D *.pdf -t $out
          '';
        };
      });
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);
    };
}
