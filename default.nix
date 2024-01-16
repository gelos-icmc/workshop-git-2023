{ stdenv, rev ? "unstable", pandoc, texlive, ... }:

stdenv.mkDerivation {
  pname = "workshop-git";
  version = rev;
  src = ./.;
  buildInputs = [ pandoc texlive.combined.scheme-small ];
  buildPhase = ''
    for file in *.md; do
      pandoc -t beamer "$file" -o "''${file/%.md/.pdf}"
    done
  '';
  installPhase = ''
    mkdir -p $out
    install -D *.pdf -t $out
  '';
}
