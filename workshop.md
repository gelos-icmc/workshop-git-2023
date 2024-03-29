---
title: Workshop de Git
subtitle: Indo além do básico
author: Ryan & Gabriel
theme: gelos
themeoptions: ["dark"]
---

# Aula 1 - Introdução ao Git

## Objetivos da Aula 1

- Entender o GIT como Controle de Versão - Teoria
- Comandos básicos e usos especificos - Prática
- Trabalhando com repositórios remotos - Prática


## Tabela de conteúdos

- [Aula 1 - Introdução ao Git](#aula-1---introdução-ao-git)
  - [Objetivos da Aula 1](#objetivos-da-aula-1)
  - [Tabela de conteúdos](#tabela-de-conteúdos)
  - [O que é Git?](#o-que-é-git)
  - [O que é Github?](#o-que-é-github)
  - [Por que usar Git?](#por-que-usar-git)
  - [Ciclo de vida dos arquivos: Os Três Estados - 1/2](#ciclo-de-vida-dos-arquivos-os-três-estados---12)
    - [Ciclo de vida dos arquivos - 2/2](#ciclo-de-vida-dos-arquivos---22)
  - [Instalando o git](#instalando-o-git)
  - [Configurações iniciais](#configurações-iniciais)
  - [Criando um repositório](#criando-um-repositório)
  - [Comandos básicos](#comandos-básicos)
  - [Exemplo de uso](#exemplo-de-uso)
  - [Exemplo de uso - 1/3](#exemplo-de-uso---13)
  - [Exemplo de uso - 2/3](#exemplo-de-uso---23)
  - [Exemplo de uso - 3/3](#exemplo-de-uso---33)
  - [Algumas Flags importantes para os comandos básicos](#algumas-flags-importantes-para-os-comandos-básicos)
  - [Ignorando arquivos](#ignorando-arquivos)
  - [Visualizando alterações](#visualizando-alterações)
  - [Git Tem Integridade: Hash - 1/1](#git-tem-integridade-hash---11)
  - [Git Tem Integridade: Somente adição - 1/2](#git-tem-integridade-somente-adição---12)
  - [Visualizando alterações com mais detalhes - 1/3](#visualizando-alterações-com-mais-detalhes---13)
  - [Visualizando alterações com mais detalhes - 2/3](#visualizando-alterações-com-mais-detalhes---23)
  - [Visualizando alterações com mais detalhes - 3/3](#visualizando-alterações-com-mais-detalhes---33)
  - [Pedindo Ajuda](#pedindo-ajuda)
  - [Dúvidas e testes de conhecimento - O Básico do Git](#dúvidas-e-testes-de-conhecimento---o-básico-do-git)
  - [Desfazendo alterações: Adicionando ao commit - 1/4](#desfazendo-alterações-adicionando-ao-commit---14)
  - [Desfazendo alterações: Removendo do Stage - 2/4](#desfazendo-alterações-removendo-do-stage---24)
  - [Desfazendo alterações: Apagando commit - 3/4](#desfazendo-alterações-apagando-commit---34)
  - [Desfazendo alterações: modificações de um arquivo  - 4/4](#desfazendo-alterações-modificações-de-um-arquivo----44)
  - [Removendo arquivos](#removendo-arquivos)
  - [Dúvidas e testes de conhecimento - Desfazendo alterações](#dúvidas-e-testes-de-conhecimento---desfazendo-alterações)
  - [Github - Trabalhando de forma remota - 1/3](#github---trabalhando-de-forma-remota---13)
  - [Github - Trabalhando de forma remota - 2/3](#github---trabalhando-de-forma-remota---23)
  - [Github - Trabalhando de forma remota - 3/3](#github---trabalhando-de-forma-remota---33)
  - [Parte final - Criando um repositório/perfil no Github](#parte-final---criando-um-repositórioperfil-no-github)
  - [Dúvidas e testes de conhecimento - Github](#dúvidas-e-testes-de-conhecimento---github)
  - [Bônus - Git Tags e Git Alias](#bônus---git-tags-e-git-alias)


<!-- O Básico do Git -->
## O que é Git?

- Sistema com a finalidade de gerenciar diferentes versões de um mesmo documento
- O Git é uma das maiores ferramenta Open Source da atualidade, Todas as empreas de tecnologia utilizam Git
- Criado por Linus Torvalds (Mesmo criador do Unix e do Linux) em linguagem C

Sua ideia é simples: salvar as alterações de um arquivo em um determinado momento e permitir tirar informações sobre o que foi alterado, quando e por que e quem fez a alteração.

![git vs vcs](./images/aula1/gitVsVCS.png)


## O que é Github?

<!-- TODO: Melhorar descrição do github -->
- Serviço de Web compartilhado para projetos que utilizam Git
- Criado por Tom Preston-Werner em Ruby

![git != github](./images/aula1/git!=Github.png)


## Por que usar Git?

- Histórico de alterações do seu projeto
<!-- TODO: Deixar uma citação do livro Pro-Git Página 11 -->
- Projeto simples
- Velocidade, Segurança e backup
- Forte suporte para desenvolvimento não-linear (milhares de ramos paralelos)
- Completamente distribuído (permite que desenvolvedores trabalhem em qualquer lugar sem depender de um servidor central)
- Capaz de lidar com projetos grandes como o núcleo o Linux com eficiência (velocidade e
tamanho dos dados)


## Ciclo de vida dos arquivos

### Os Três Estados

<!-- TODO: Deixar uma citação do livro Pro-Git Página 14 -->
- Esta é a **principal** coisa a lembrar sobre Git se você quiser que o resto do seu processo de aprendizagem ocorra sem problemas
- Os três estados principais que seus arquivos podem ocupar em um repositório Git:
  - **Untracked**: Arquivos que não estão sendo rastreados pelo Git
  - **Staged**: Arquivos que estão sendo rastreados pelo Git e estão prontos para serem commitados
  - **Unmodified**: Arquivos que estão sendo rastreados pelo Git e não foram alterados desde o último commit

![Git life cycle 3 state](./images/aula1/gitLifeCycle-3states-local.png)

O fluxo de trabalho básico do Git é algo assim:

1. Você modifica arquivos no seu diretório de trabalho.
2. Você prepara os arquivos, adicionando-os ao seu área de preparação. (stage area)
3. Você faz commit, o que leva os arquivos como eles estão no seu diretório de preparação e os armazena permanentemente no seu diretório Git.


## Ciclo de vida dos arquivos - 2/2

Agora que você entendeu os três principais estados de um repositório Git, vamos entender como cada arquivo se comporta dentro do repositório

![Git Life Cycle](./images/aula1/gitLifeCycle.png)

Vamos passar por cada um desses estados hoje


## Instalando o git

- Windows: <https://git-scm.com/download/win>
- Linux: <https://git-scm.com/download/linux>
- Mac: <https://git-scm.com/download/mac>


## Configurações iniciais

Definindo seu nome e email padrão para controle de histórico

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu email"
```

Definindo o editor de texto padrão para escrita de mensagens

```bash
git config --global core.editor "code" # vscode
git config --global core.editor "subl" # sublime
git config --global core.editor "vim" # vim
```

a flag `--global` define que as configurações serão aplicadas para todos os repositórios criados na sua máquina

Para verificar as configurações

```bash
git config --list
```


## Criando um repositório

Temos duas formas de criar um repositório, você cria um ou você clona um

- Criando um repositório: `git init`

```bash
mkdir nome-da-pasta
cd nome-da-pasta
git init
```

- Clonando um repositório: `git clone <url-do-repositorio>`

```bash
git clone https://github.com/gelos-icmc/workshop-git-2023 # exemplo
```

Para quem está no Windows: botão direito do mouse na pasta criada > Git Bash Here > git init

![windows Git Bash Here](./images/aula1/windowsGitBashHere.png)


## Comandos básicos

Antes de mostrar os comandos vamos defini-los

- `git status`: mostra o estado atual do repositório
- `git add <caminho-do-arquivo>`: adiciona o arquivo ao staged
- `git commit -m "mensagem do commit"`: salva as alterações no repositório
- `git log`: mostra o histórico de commits


## Exemplo de uso

Vamos criar um arquivo html com o nome index.html com o texto `Olá Mundo` e vamos adicionar ele ao nosso repositório

Uma vez com o repositorio criado (git init) e o arquivo criado (index.html) vamos verificar o status do repositório


## Exemplo de uso - 1/3

código html do arquivo index.html para quem quiser copiar

```html
<!DOCTYPE html>
<html lang="pt-br">

<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Workshop Git 2023</title>
</head>

<body>
 <h1>Olá mundo!</h1>
</body>

</html>
```


## Exemplo de uso - 2/3

Executem na máquina de vocês

```bash
ls # lista os arquivos da pasta
git status # verifica o status do repositório
git add index.html # adiciona o arquivo ao staged
git status # (agora o arquivo está no staged)
git commit -m "primeiro commit" # salva as alterações
git status # (agora o arquivo está no unmodified)
```


## Exemplo de uso - 3/3

Vocês vão ver alguma coisa parecida com isso ao executar o git status

```bash
On branch main
Your branch is up-to-date with 'origin/main'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

    new file: index.html

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

    modified: README.md
```


## Algumas Flags importantes para os comandos básicos

- `git add -A`: adiciona todos os arquivos (Não importa se você esta em uma subpasta) ao staged
- `git status -s`: mostra o status do repositório de uma forma mais resumida
- `git commit -a -m "mensagem do commit"`: adiciona todos os arquivos (Já trackeados) ao staged e faz o commit


## Ignorando arquivos

É possível ignorar arquivos que você não quer que sejam adicionados ao repositório criando um arquivo chamado `.gitignore`

```bash
touch .gitignore # cria o arquivo .gitignore
```

Dentro desse arquivo você pode colocar o nome dos arquivos ou pastas que você quer ignorar, ele segue o padrão de expressões regulares usadas no linux

```bash
# ignorar arquivos com extensão .a
*.a
# mas rastrear o arquivo lib.a, mesmo que você esteja ignorando os arquivos .a acima
!lib.a
# ignorar o arquivo TODO apenas no diretório atual, mas não em subdir/TODO
/TODO
# ignorar todos os arquivos no diretório build/
build/
# ignorar doc/notes.txt, mas não doc/server/arch.txt
doc/*.txt
# ignorar todos os arquivos .pdf no diretório doc/
doc/**/*.pdf
```

**DICA:** Você pode encontrar modelos prontos de `.gitignore` em <https://github.com/github/gitignore>

<!-- TODO: referência página 28 livro Pro-git -->


## Visualizando alterações

Agora, você fez o seu primeiro commit! vamos aprender a ver o histórico de commits

```bash
git log # mostra o histórico de commits
```

![git log](./images/aula1/gitLogExemplo1.png)

<!-- TODO: Explicar o que é o HEAD e dizer q será melhor explicado na aula de branch -->

Se você quiser ver o histórico de commits de uma forma mais resumida você pode usar o comando `git log --oneline`


## Git Tem Integridade: Hash - 1/1

<!-- TODO: citação ao livro pro-git página 13 -->

- Tudo no Git passa por uma soma de verificações (checksum) antes de ser armazenado e é refereciado por esse checksum
- Isso significa que é impossível alterar o conteúdo de um arquivo sem que o Git saiba

- O mecanismo que o Git usa para essa verificação é chamado de SHA-1 hash, que é uma sequência de 40 caracteres hexadecimais (0-9 e a-f) calculados com base no conteúdo do arquivo

```bash
24b9da6552252987aa493b52f8696cd6d3b00373
```

Você vai ver esses valores de hash em todo o lugar do Git porque ele os usa com frequência. Na verdade, Git armazena tudo não pelo nome do arquivo, mas pelo valor de hash do seu conteúdo.


## Git Tem Integridade: Somente adição - 1/2

O Git só adiciona informações ao repositório, ele nunca altera ou exclui informações

- Você nunca pode perder informações se elas forem adicionadas ao Git
- Isso faz com que seja muito díficil fazer algo no sistema que não seja reversível ou fazê-lo apagar dados de forma
alguma
- Fica mais díficil ainda perder dados se você commitar regularmente e enviar seus dados para outro repositório


## Visualizando alterações com mais detalhes - 1/3

Sabemos que podemos usar o git log para ver o histórico de commits, mas e se quisermos ver as alterações que foram feitas em cada commit?

- `git log -p`: mostra o histórico de commits com as alterações feitas em cada commit
- `git log -p -2`: mostra as duas últimas alterações feitas no repositório
- `git log --stat`: mostra o histórico de commits com as alterações em arquivos e quantas linhas foram adicionadas e removidas

Você consegue ver uma "linha histórica" dos commits usando o comando `git log --graph` (Conceito de branch, que vamos ver mais tarde)

Eu recomendo que vocês usem o comando `git log --oneline --graph --all` para ver o histórico de commits de uma forma mais resumida e visual


## Visualizando alterações com mais detalhes - 2/3

Eu já sei qual commit específico eu quero ver as alterações, como eu faço agora? Vou ter que contar??

- `git show <hash-do-commit>`: mostra as alterações feitas no commit especificado (O hash pode ser abreviado, mas tem que ser único)
- `git show`: mostra as alterações feitas no último commit


## Visualizando alterações com mais detalhes - 3/3

Se você quiser ver todas suas alterações feitas até o momento você pode usar o comando `git diff`

- `git diff`: mostra as alterações feitas em arquivos que ainda não foram adicionados ao staged
- `git diff --staged` ou `git diff --cached`: mostra as alterações feitas em arquivos que estão no staged


## Pedindo Ajuda

Git possui muitos comandos e muitos deles você vai se esquecer como usar corretamente ou vai querer saber mais sobre eles

Para isso você pode simplesmente pedir ajuda para o git

```bash
git help <comando>
git <comando> --help
man git-<comando> # linux
```

Exemplo:

```bash
git help show # vai abrir uma página com a documentação do comando show
```

Todos esses comandos podem ser acessados sem internet e caso eles a informação que você precisa não esteja lá você pode acessar a documentação do git em <https://git-scm.com/docs> e pesquisar pelo comando que você precisa
<!-- O Básico do Git -- FIM -->


## Dúvidas e testes de conhecimento - O Básico do Git

<!-- TODO: elaborar questões simples e fáceis para que os alunos respondam de modo a fixar o conteúdo teórico -->
<!-- Dar enfoque a 3 coisas: Estados, Hash e ciclo de comandos -->


## Desfazendo alterações: Adicionando ao commit - 1/4

A qualquer estágio, você talvez queira desfazer algo. Aqui, vamos mostrar como desfazer alterações em arquivos e commits.

Um dos casos mais comuns é desfazer um comando quando você esqueceu de adicionar algo ao commit ou escreveu a mensagem errada.

```bash
git add arquivo1.txt
git commit -m "adicionando arquivo 1"
git add arquivo2.txt
git commit --amend -m "adicionando arquivo 1 e 2"
```

Ao usar `amend`, você pode adicionar arquivos ao commit anterior e alterar a mensagem do commit.

Faça um teste, adicione um arquivo e faça um commit, depois adicione outro arquivo e faça um commit com `--amend`.


## Desfazendo alterações: Removendo do Stage - 2/4

Outro caso muito comum é quando você quer desfazer alterações em arquivos que ainda não foram commitados. No caso, estão no staged.

```bash
git add arquivo1.txt
git add arquivo2.txt
git status -s # Aqui você vai ver que os arquivos estão no staged
git reset arquivo1.txt # remove o arquivo do staged
git status -s # Aqui você vai ver que o arquivo não está mais no staged
```


## Desfazendo alterações: Apagando commit - 3/4

Você pode usar o comando `git reset` para desfazer alterações em arquivos que já foram commitados, mas não é recomendado.

```bash
git add arquivo1.txt
git commit -m "adicionando arquivo 1"
git add arquivo2.txt
git commit -m "adicionando arquivo 2"
git reset HEAD~1 # remove o último commi (o número 1 é a quantidade de commits que você quer remover)
```

Há dois principais tipos de reset: `soft` e `hard`.

- O `soft` remove o commit, mas mantém as alterações no staged.
- O `hard` remove o commit e as alterações.

Por padrão, o `reset` é `soft`. Para usar o `hard`, você precisa passar o parâmetro `--hard`. Exemplo: `git reset HEAD~1 --hard`

Tente fazer um teste com o `soft` e o `hard`.

<!-- TODO: Adicionar uma nota de quanto é perigoso usar o hard -->


## Desfazendo alterações: modificações de um arquivo  - 4/4

E se você se der conta de que na verdade não queria ter feito modificações a um arquivo? O que você faria? Ctrl+z até o infinito?

Para isso temos o comando `git checkout`

```bash
git status -s # Aqui você vai ver que o arquivo está no unmodified
# Vamos modificar o arquivo "arquivo1.txt"
git status -s # Aqui você vai ver que o arquivo está no modified
git checkout -- arquivo1.txt # remove as alterações feitas no arquivo
git status -s # Aqui você vai ver que o arquivo está no unmodified
```

O `--` é usado para dizer que o que vem depois dele é um arquivo e não nomes de branchs ou tags (que vamos ver mais tarde)

também é possível usar o comando `git checkout .` que remove as alterações de todos os arquivos modificados no repositório

<!-- TODO: Nota de que esse comando é perigoso e que toda alteração feita vai ser perdida -->


## Removendo arquivos

Para remover arquivos do repositório você pode usar o comando `git rm`

```bash
git rm arquivo1.txt # remove o arquivo do repositório (local e staged)
git rm --cached arquivo1.txt # remove o arquivo do staged (local não é afetado)
```

Uma outra forma de remover arquivos do repositório é usando a forma tradicional de remover arquivos do seu sistema operacional (logo, somente rm --cached tem certa utilidade aqui)

**NOTA:** Remover um arquivo desta forma não exclui os rastros dele do histórico de commits, se você quiser fazer isso você pode usar o comando `git filter-branch` que será abordado na próxima aula


## Dúvidas e testes de conhecimento - Desfazendo alterações

<!-- TODO:Elaborar questões de desfazendo mudanças -->
<!-- Focar em reset e ammend e como o Hash é importante -->


## Github - Trabalhando de forma remota - 1/3

Agora que você já sabe como trabalhar com o git localmente, vamos aprender a trabalhar com o git de forma remota

- `git remote -v`: mostra os repositórios remotos que você tem (A flag `-v` mostra a url do repositório)

Se você clonou um repositório, você já tem um repositório remoto chamado `origin`, este, aponta para o repositório que você clonou

Para adicionar um repositório remoto você pode usar o comando `git remote add <nome-do-repositorio> <url-do-repositorio>`


## Github - Trabalhando de forma remota - 2/3

Você pode renomear um repositório remoto usando o comando `git remote rename <nome-do-repositorio> <novo-nome-do-repositorio>`

Você também pode remover um repositório remoto usando o comando `git remote remove <nome-do-repositorio>` ou `git remote rm <nome-do-repositorio>`

Você pode inspecionar um repositório remoto usando o comando `git remote show <nome-do-repositorio>`

```bash
git remote show origin
* remote origin
  Fetch URL: https://github.com/gelos-icmc/workshop-git-2023.git
  Push  URL: https://github.com/gelos-icmc/workshop-git-2023.git
  HEAD branch: main
  Remote branch:
    main tracked
  Local branch configured for 'git pull':
    main merges with remote main
  Local ref configured for 'git push':
    main pushes to main (local out of date)
```


## Github - Trabalhando de forma remota - 3/3

Agora que temos um repositório remoto, vamos aprender a trabalhar com ele

- `git push <nome-do-repositorio> <nome-da-branch>`: envia as alterações para o repositório remoto
- `git fetch <nome-do-repositorio> <nome-da-branch>`: pega as alterações do repositório remoto, mas não aplica no repositório local
- `git pull <nome-do-repositorio> <nome-da-branch>`: pega as alterações do repositório remoto e aplica no repositório local

Na prática você vai usar o `git push` e o `git pull` com mais frequência


## Parte final - Criando um repositório/perfil no Github

- Crie uma conta no Github
- Crie um repositório no Github com o seu `username`
- Crie uma pasta no seu computador com o nome `workshop-git-2023` e inicialize um repositório git nela
- Adicione o repositório remoto ao repositório local
- Crie um arquivo `README.md` e adicione um texto qualquer
- Adicione o arquivo ao staged e faça um commit
- Envie as alterações para o repositório remoto
- Verifique se as alterações foram enviadas
- Faça uma alteração no remoto
- Puxe as alterações do remoto para o local com o `git pull`


## Dúvidas e testes de conhecimento - Github

<!-- TODO: Criar questões que foquem ainda na questão de como o Hash é afetado -->
<!-- Mudanças no remote e no local como elas se conversam? -->


## Bônus - Git Tags e Git Alias

<!-- Referência, página 50 livro Pró-git -->
<!-- Referência, página 54 livro Pró-git -->

# Aula 2 - Navegação e referências


## Objetivos da Aula 2

- Entender Braching, Merging e Rebase do GIT
- Git em Servidores (HTTP, SSH) - Configuração de chaves
- Trabalho distrubuído com GIT


## Tabela de conteúdos

- [Aula 2 - Navegação e referências](#aula-2---navegação-e-referências)
  - [Objetivos da Aula 2](#objetivos-da-aula-2)
  - [Tabela de conteúdos](#tabela-de-conteúdos)
  - [O que é uma Branch? - 1/3](#o-que-é-uma-branch---13)
  - [O que é uma Branch? - 2/3](#o-que-é-uma-branch---23)
  - [O que é uma Branch? - 3/3](#o-que-é-uma-branch---33)
  - [Trabalhando com Branches - 1/3](#trabalhando-com-branches---13)
  - [Trabalhando com Branches - 2/3](#trabalhando-com-branches---23)
  - [Trabalhando com Branches - 3/3](#trabalhando-com-branches---33)
  - [Prática - Branches](#prática---branches)
  - [Stashing - 1/2](#stashing---12)
  - [Stashing - 2/2](#stashing---22)


<!-- TODO: Adicionar revisão de comandos e teoria da ultima aula -->

## O que é uma Branch? - 1/3

Antes de explicar o que é uma branch, vamos voltar um pouco e entender o que é um commit

<!-- Quando você faz um commit executando git commit, o Git verifica cada subdiretório (neste caso,
apenas o diretório raiz do projeto) e armazena esses objetos no repositório do Git. O Git então cria
um objeto de commit que possui os metadados e um ponteiro para a raiz do projeto para que ele
possa recriar aquele snapshots quando necessário.
Resumir isso
 -->

- Quando você faz um commit, o Git armazena um objeto de commit no repositório do Git (./git/objects)
- Cada commit possui metadados e ponteiros para os "blobs" (arquivos) que foram alterados

![Diagrama de um commit](./images/aula2/commit.png)


## O que é uma Branch? - 2/3

Se você commitar novamente, o proximo commit terá um ponteiro para o commit anterior

<!-- REVIEW: A definição de snapshot esta certa? -->
- Cada commit vai ter um ponteiro para uma snapshot (conjunto de arquivos e suas respectivas modificações)
- O Git é um grafo acíclico direcionado

![Diagrama de grafo de um commit](./images/aula2/commitGraph.png)


## O que é uma Branch? - 3/3

Enfim, chegamos em o que é uma branch

- Uma branch é um ponteiro para um commit
- O nome padrão do branch principal é `master` (recomendado mudar para `main`)
- Todas as vezes que você commita, este ponteiro é atualizado para o commit mais recente
- Esse ponteiro é chamado de `HEAD`

![Diagrama de branch master](./images/aula2/headBranchExample.png)


## Trabalhando com Branches - 1/3

Ao criar uma branch, você cria um novo ponteiro para seu commit atual

- Você pode criar uma branch com o comando `git branch <nome da branch>`

**NOTA:** Ao criar uma branch, você não muda de branch, você continua na branch atual

![Exemplo de criação de branch](./images/aula2/createBranch.png)


## Trabalhando com Branches - 2/3

Então, como eu mudo de branch?

- Você pode mudar de branch com o comando `git switch <nome da branch>` ou `git checkout <nome da branch>`

Suponha então que você troque de branch e crie um novo commit

![Alternando Branch e commitando](./images/aula2/switchBranch.png)


## Trabalhando com Branches - 3/3

Deste modo, você pode alternar entre branches e criar commits em cada uma delas

- Cada branch é independente uma da outra

Aqui chegamos em um ponto crucial do Git, ao ter duas branches, você pode fazer um merge entre elas

![Branches](./images/aula2/branches.png)


## Prática - Branches
<!-- NOTE: A prática será ao vivo junto dos alunos -->

Dentro do repositório da aula 1, crie uma branch chamada `aula2` e faça um commit nela

**Pré-requisitos:** Garanta que a sua branch atual tem ao menos um commit e que você está na branch `main`, para isso:

1. Use o comando `git log` para ver os commits (caso não tenha, commite algo)
2. caso sua branch principal não se chame `main`, use o comando `git branch -M <nome da branch>` para renomear a branch

**Prática:**

- Auxilio: `git branch` para saber qual branch você está
- Auxilio: `git log --oneline --graph --decorate --all` para ver o grafo de commits

- Use o comando `git branch <nome da branch>` para criar uma branch
- Use o comando `git switch <nome da branch>` para mudar de branch
- Em sua nova branch, commite um novo arquivo ou altere um arquivo existente (veja o grafo de commits)
- Use o comando `git switch main` para voltar para a branch principal
- Faça um novo commit de um arquivo diferente ou uma modificação diferente (veja o grafo de commits)


## Stashing - 1/2

Há um local temporário onde o Git armazena as modificações que você fez mas não commitou

- `git stash` - Salva as modificações atuais em um local temporário

![Stash](./images/aula2/gitStash.jpg)

o git stash é util quando você quer mudar de branch mas não quer commitar suas modificações (por exemplo, quando você está no meio de uma funcionalidade e precisa mudar de branch para corrigir um bug)


## Stashing - 2/2

<!-- TODO: Colocar exemplos e criar demonstração de uso -->

- `git stash list` - Lista os stashes
- `git stash apply` - Aplica o stash mais recente no seu branch atual (não remove o stash)
- `git stash pop` - Aplica o stash mais recente no seu branch atual (remove o stash)
- `git stash drop` - Remove o stash mais recente (não aplica o stash)
- `git stash clear` - Remove todos os stashes
- `git stash show` - Mostra as modificações do stash mais recente

**NOTA:** Todos os comandos a cima podem receber um argumento para especificar o stash que você quer aplicar/remover/exibir
Exemplo: `git stash apply stash@{2}`

# Aula 3 - Workflow
