# Workshop git

Workshop a ser dado pelo Ryan e Gabriel, em data a ser definida.

Esse repositório contém os slides, montados com pandoc + beamer.

## Build

### Com nix

```bash
nix build
```

### Manualmente

Você precisa dos pacotes básicos do tex (e.g. pelo texlive), pandoc. e do [tema
do gelos](https://github.com/gelos-icmc/beamer-theme).

Uma forma simples é usando a nix shell:
```bash
nix develop -c $SHELL
```

Ou instale texlive e pandoc, e baixe o tema do gelos no seu diretório texmf:
```bash
mkdir -p ~/texmf/tex/latex
git clone https://github.com/gelos-icmc/beamer-theme ~/texmf/tex/latex/gelosbeamer
```

Com isso certo, basta usar o pandoc:

```bash
pandoc -t beamer workshop.md -o workshop.pdf
```
