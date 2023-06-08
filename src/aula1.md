## Aula 1 - Introdução ao Git

---

### Objetivos da Aula 1

- Entender o Controle de Versão
- Como lidar com o git e seus comandos
- Como subir o seu primeiro repositório

---

### O que é Git?

- Sistema com a finalidade de gerenciar diferentes versões de um mesmo documento
- Criado por Linus Torvalds em C de modo a ser distribuído & Open Source

![git vs vcs](https://cloud.gelos.club/s/TifD7kWb2gWs9MY/preview)

---

### O que é Github?

- Serviço de Web compartilhado para projetos que utilizam Git
- Criado por Tom Preston-Werner em Ruby

GIT != GITHUB
![git != github]()

---

### Por que usar Git?

- Histórico de alterações do seu projeto
- Trabalho em equipe de forma organizada
- Segurança e backup
- Trabalho assíncrono

---

### Instalando o git

- Windows: <https://git-scm.com/download/win>
- Linux: <https://git-scm.com/download/linux>
- Mac: <https://git-scm.com/download/mac>

---

### Configurações iniciais

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

Para verificar as configurações

```bash
git config --list
```

---

### Criando um repositório

Comandos para criar uma pasta e inicializar um repositório

```bash
mkdir nome-da-pasta
cd nome-da-pasta
git init
```

Para quem está no Windows: botão direito do mouse na pasta criada > Git Bash Here > git init

---

### Ciclo de vida dos arquivos
