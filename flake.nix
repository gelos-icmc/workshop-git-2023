{
  nixConfig = {
    extra-substituters = [ "https://cache.m7.rs" ];
    extra-trusted-public-keys = [ "cache.m7.rs:kszZ/NSwE/TjhOcPPQ16IuUiuRSisdiIwhKZCxguaWg=" ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs.lib) genAttrs getExe importJSON;
      pkgsFor = nixpkgs.legacyPackages;
      systems =  [ "x86_64-linux" "aarch64-linux" ];
      manifest = importJSON ./package.json;
      forEachSystem = f: genAttrs systems (s: f s pkgsFor.${s});
    in
    rec {
      packages = forEachSystem (system: pkgs: {
        default = pkgs.buildNpmPackage {
          inherit (manifest) name version;
          src = ./.;
          installPhase = "cp -r dist $out";
          npmDepsHash = "sha256-DzC4in5xK4zitVwOopWPxMf/EGEke1nqGO3GNTzARMo=";
        };
      });

      apps = forEachSystem (system: pkgs: {
        default = {
          type = "app";
          program = getExe (pkgs.writeShellScriptBin "serve" ''
            echo "Serving on http://localhost:8080"
            ${getExe pkgs.webfs} -F \
              -r ${packages.${system}.default} \
              -f index.html -p 8080
          '');
        };
      });

      hydraJobs = packages;
    };
}

