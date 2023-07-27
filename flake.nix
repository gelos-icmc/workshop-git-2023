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
      inherit (nixpkgs.lib) genAttrs getExe importJSON readFile;
      pkgsFor = nixpkgs.legacyPackages;
      systems =  [ "x86_64-linux" "aarch64-linux" ];
      manifest = importJSON ./package.json;
      forEachSystem = f: genAttrs systems (s: f s pkgsFor.${s});
    in
    rec {
      packages = forEachSystem (system: pkgs: {
        default = pkgs.buildNpmPackage {
          inherit (manifest) pname version;
          src = ./.;
          installPhase = "cp -r dist $out";
          npmDepsHash = readFile ./.deps-hash;
          makeCacheWritable = true;
        };
        serve = pkgs.writeShellScriptBin "serve" ''
          echo "Serving on http://localhost:8080"
          ${getExe pkgs.webfs} -F \
            -r ${packages.${system}.default} \
            -f index.html -p 8080
        '';
        fix-hash = pkgs.writeShellScriptBin "fix-hash" ''
          ${getExe pkgs.prefetch-npm-deps} package-lock.json > .deps-hash
        '';
      });

      apps = forEachSystem (system: _: {
        default = {
          type = "app";
          program = getExe (packages.${system}.default);
        };
      });
    };
}

