{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    inherit (nixpkgs.lib) genAttrs getExe importJSON readFile;
    systems = ["x86_64-linux" "aarch64-linux"];
    forEachSystem = f: genAttrs systems (s: f s nixpkgs.legacyPackages.${s});
    mkApp = package: {
      type = "app";
      program = getExe package;
    };
  in rec {
    # Pacotes disponíveis via "nix build", "nix shell", "nix run"...
    packages = forEachSystem (_: pkgs: rec {
      # O site em si
      default = site;
      site = pkgs.buildNpmPackage {
        inherit (importJSON ./package.json) pname version;
        src = ./.;
        installPhase = "cp -r dist $out";
        npmDepsHash = readFile ./.deps-hash;
        makeCacheWritable = true;
      };
      # Servir o site com o webfsd
      serve = pkgs.writeShellScriptBin "serve" ''
        echo "Serving on http://localhost:8080"
        ${getExe pkgs.webfs} -F -r ${site} -f index.html -p 8080
      '';
      # Rodar prefetch-npm-deps e atualizar o hash da package-lock
      fix-hash = pkgs.writeShellScriptBin "fix-hash" ''
        ${getExe pkgs.prefetch-npm-deps} package-lock.json > .deps-hash
      '';
    });

    # Rodar o serve quando usarmos "nix run"
    apps = forEachSystem (sys: _: {
      default = mkApp packages.${sys}.serve;
    });

    # Formatador ao usar "nix fmt"
    formatter = forEachSystem (_: pkgs: pkgs.alejandra);
  };
}
