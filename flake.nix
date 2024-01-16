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
        default = pkgs.callPackage ./default.nix { rev = self.shortRev or "dirty"; };
      });
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);
    };
}
