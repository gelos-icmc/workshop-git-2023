# Workshop git intermediário (2023)

[![built with nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://nixos.org)
![build status](https://github.com/gelos-icmc/workshop-git-2023/actions/workflows/build.yml/badge.svg)

Workshop a ser dado pelo Ryan e Gabriel, em data a ser definida.

Esse repositório contém os slides, montados com
[reveal.js](https://revealjs.com). Usamos NPM e Webpack para evitar ter que
vendorar dependências e facilitar o desenvolvimento.

## Build

Para buildar os slides finais, você pode usar:

### Nix:

```sh
$ nix build
# result/index.html
```

Caso prefira, você também pode já servir os slides:
```sh
$ nix run
# localhost:8080
```

Você pode colocar `github:gelos-icmc/workshop-git-2023` depois de qualquer um
desses dois, e nem precisa clonar o repositório.

Caso prefira usar o NPM diretamente (e.g. para iterar mais rápido), você pode obter uma shell com tudo que precisa usando:
```sh
$ nix develop
```

### NPM diretamente:

```sh
$ npm install
$ npm run build
# dist/index.html
```

Também pode servir (e recompilar ao salvar):
```sh
$ npm run serve
# localhost:8080
```
