# Workshop git

Workshop a ser dado pelo Ryan e Gabriel, em data a ser definida.

Esse repositório contém os slides, montados com pandoc + beamer.

## Build

### Diretamente

Tenha instalado texlive e pandoc. Para cada aula:

```bash
pandoc -d pandoc.yml aulaX.md -o aulaX.pdf
```

### Com make

```
make all
```

### Com nix

```
nix build
```
