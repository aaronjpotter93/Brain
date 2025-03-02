---
file_type: project
status: active
alias: environment portability
---

parent: [[Developer Productivity 2 MOC]]

# Windows
:LiFolder: Applications/

| Applications          | Note | Planned Use Cases                                       | :LiExternalLink:                  |
| --------------------- | ---- | ------------------------------------------------------- | --------------------------------- |
| :SiObsidian: Obsidian |      | second brain                                            | [Docs](https://help.obsidian.md/) |
| :SiObsstudio: OBS     |      | screen recording and streaming software                 |                                   |
| :SiDocker: Docker     |      | probably to pull functional apps i make for desktop use |                                   |
| :SiDiscord: Discord   |      | chattin                                                 |                                   |

---
# Linux
:LiFolder: runs/

## Setup

```bash
#!/usr/bin/env bash
sudo apt -y update

if ! command -v git &> /dev/null; then
sudo apt -y install git
fi

if [ ! -d $HOME/personal ]; then
mkdir $HOME/personal
fi

git clone https://github.com/aaronjpotter93/dev-env $HOME/personal/dev

# What does this part do??
pushd $HOME/personal/dev
./run
popd
```

## Runs

| GUI Applications      | Note | Planned Use Cases | :LiExternalLink:                  |
| --------------------- | ---- | ----------------- | --------------------------------- |
| :SiObsidian: Obsidian |      | second brain      | [Docs](https://help.obsidian.md/) |
| :LiGhost: Ghostty     |      |                   |                                   |
| :SiDocker: Docker     |      |                   |                                   |

---

| CLI Tools                     | Command     | Note                                                | Planned Use Cases | :LiExternalLink:                                                            |
| ----------------------------- | ----------- | --------------------------------------------------- | ----------------- | --------------------------------------------------------------------------- |
| :LiGitBranch: git             | git         | version control                                     |                   | [Docs](https://git-scm.com/docs)                                            |
| :SiGithub: github cli         | gh          | GitHub CLI interaction                              |                   | [Docs](https://cli.github.com/manual/)                                      |
| :LiFileSearch: ripgrep        | rg          | Fast alternative to grep                            |                   | [Docs](https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md)          |
| :LiAudioLines: pavucontrol    | pavucontrol | PulseAudio volume control GUI                       |                   | [Docs](https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/) |
| :LiClipboard: xclip           | xclip       | Clipboard interaction                               |                   | [Docs](https://manpages.ubuntu.com/manpages/bionic/man1/xclip.1.html)       |
| :LiClipboard: xsel            | xsel        | Clipboard interaction (alternative)                 |                   | [Docs](https://github.com/kfish/xsel)                                       |
| :LiKeyboard: xdotool          | xdotool     | X input automation                                  |                   | [Docs](https://manpages.ubuntu.com/manpages/xenial/man1/xdotool.1.html)     |
| :SiAutohotkey: sxhkd          | sxhkd       | Simple X hotkey daemon                              |                   | [Docs](https://github.com/baskerville/sxhkd)                                |
| :LiClipboardPaste: greenclip  | greenclip   | Clipboard manager                                   |                   | [Docs](https://github.com/erebe/greenclip)                                  |
| :TiJson: jq                   | jq          | Command-line JSON processor                         |                   | [Docs](https://jqlang.org/manual/)                                          |
| :LiFileStack: tldr            | tldr        | Simplified man pages                                |                   | [Docs](https://github.com/tldr-pages/tldr)                                  |
| :RiScreenshot2Line:shutter    | shutter     | Screenshot tool                                     |                   | [Docs](https://shutter-project.org/)                                        |
| :SiPython: python3-pip        | pip3        | Python package installer                            |                   | [Docs](https://pip.pypa.io/en/stable/)                                      |
| :SiPython: python3-setuptools |             | Python package utilities                            |                   | [Docs](https://setuptools.pypa.io/en/latest/)                               |
| :SiPython: python3-dev        |             | Python development headers                          |                   | [Docs](https://docs.python.org/3/extending/extending.html)                  |
| :SiGnu: gpg                   | gpg         | GNU Privacy Guard (encryption)                      |                   | [Docs](https://www.gnupg.org/documentation/manuals/gnupg.pdf)               |
| :LiPaintbrush: bat            | bat         | Modern alternative to cat                           |                   | [Docs](https://github.com/sharkdp/bat)                                      |
| :LiPaintbrush: eza            | eza         | Modern alternative to ls                            |                   | [Docs](https://github.com/eza-community/eza)                                |
| :LiAngry: thefuck             | thefuck     | Corrects your previous console command              |                   | [Docs](https://github.com/nvbn/thefuck)                                     |
| :LiKeyRound: age              | age         | A simple, modern and secure file encryption tool.   |                   | [Docs](https://github.com/FiloSottile/age)                                  |
| :TiShieldLock: sops           | sops        | A simple and flexible tool for managing secrets.    |                   | [Docs](https://github.com/getsops/sops)                                     |
| :RaFairy: navi                | navi        | An interactive cheatsheet tool for the command-line |                   | [Docs](https://github.com/denisidoro/navi)                                  |
| :TiSql: mysql                 | mysql       | structured query language db server                 |                   | [Docs](https://dev.mysql.com/doc/refman/8.4/en/)                            |

---

| Projects                        | Note                           | :LiExternalLink:                                  |
| ------------------------------- | ------------------------------ | ------------------------------------------------- |
| :SiPioneerdj: Mixxx             | FOSS DJ Software               | [Docs](https://github.com/mixxxdj/mixxx)          |
| :TiBrandMinecraft: MineFortress | FOSS Minecraft RTS MOD         | [Docs](https://github.com/remmintan/minefortress) | 
| :RiMoneyDollarBoxLine: Badget   | FOSS Copilot Money Alternative | [Docs](https://github.com/Codehagen/Badget)                                                  |

---
## NVM, Node.js, NPM

```bash
#!/usr/bin/env bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v
nvm current
# Verify npm version:
npm -v

# Installs nvm, node.js, and npm
```

### Managed by NPM

| CLI Tool                  | Command  | Note                                                                             | :LiExternalLink:                             |
| ------------------------- | -------- | -------------------------------------------------------------------------------- | -------------------------------------------- |
| :TiBrandAngular: angular  | ng       | Automate Angular development tasks, from project creation to deployment          | [Docs](https://angular.dev/cli)              |
| :TiBrandAngular: compodoc | compodoc | Compodoc generates documentation for Angular applications from your source code. | [Docs](https://compodoc.app/)                |
| :SiVuedotjs: vue          | vue      | Vue.js is a progressive JavaScript framework for building user interfaces.       | [Docs](https://vuejs.org/guide/introduction) |

```bash
#!/usr/bin/env bash
# Install Angular CLI
npm install -g @angular/cli
# Install compodoc for Angular
npm install -g @compodoc/compodoc
# Install Vue CLI
npm install -g @vue/cli
```


---
# MacOS
:LiFolder: runs/
> start with installing package managers
```
|_ Brew OR Apt
|_ NPM
```


## Package Managers
> installed by curl

| Package Manager       | Command | Note                                  | :LiExternalLink:                 |
| --------------------- | ------- | ------------------------------------- | -------------------------------- |
| :SiHomebrew: homebrew | brew    | The missing package manager for macOS | [Docs](https://brew.sh/)         |
| :SiNpm: npm           | npm     | package manager for javascript        | [Docs](https://docs.npmjs.com/)  |
| :TiSdk: sdkman        | sdk     | jdk & sdk manager for java            | [Docs](https://sdkman.io/usage/) |

homebrew
```bash
#!/usr/bin/env bash
# On mac must install xcode command line tools first
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

npm
```bash
#!/usr/bin/env bash
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v
nvm current
# Verify npm version:
npm -v

# Installs nvm, node.js, and npm
```

sdkman
```bash
#!/usr/bin/env bash
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```


## Homebrew
> managed by brew

| Casks                          | Command | Note       | :LiExternalLink:                                                 |
| ------------------------------ | ------- | ---------- | ---------------------------------------------------------------- |
| :TiBrandVscode: Vscode         | code    | an ide     | [Docs](https://github.com/tmux/tmux/wiki/Getting-Started)        |
| :SiIntellijidea: IntelliJ IDEA |         | a java ide | [Docs](https://www.jetbrains.com/help/idea/getting-started.html) |
| :SiPostman: Postman            |         | an api ide | [Docs](https://learning.postman.com/docs/introduction/overview/)                                                                 |


| Formulae      | Command | Note                                                   | :LiExternalLink:                                          |
| ------------- | ------- | ------------------------------------------------------ | --------------------------------------------------------- |
| :SiTmux: tmux | tmux    | A terminal multiplexer for managing multiple sessions. | [Docs](https://github.com/tmux/tmux/wiki/Getting-Started) |
|               |         |                                                        |                                                           |

Casks
```bash
#!/usr/bin/env bash
# Install VSCode
brew install --cask visual-studio-code
# Install IntelliJ IDEA
brew install --cask intellij-idea
# Install Postman
brew install --cask postman
```

Formulae
```bash
#!/usr/bin/env bash
# Install tmux
brew install tmux

```

---
## NPM
> managed by npm

| Package Managed Package Managers | Command | Note                                                          | :LiExternalLink:                                   |
| -------------------------------- | ------- | ------------------------------------------------------------- | -------------------------------------------------- |



| CLI Tool                  | Command  | Note                                                                             | :LiExternalLink:                             |
| ------------------------- | -------- | -------------------------------------------------------------------------------- | -------------------------------------------- |
| :TiBrandAngular: angular  | ng       | Automate Angular development tasks, from project creation to deployment          | [Docs](https://angular.dev/cli)              |
| :TiBrandAngular: compodoc | compodoc | Compodoc generates documentation for Angular applications from your source code. | [Docs](https://compodoc.app/)                |
| :SiVuedotjs: vue          | vue      | Vue.js is a progressive JavaScript framework for building user interfaces.       | [Docs](https://vuejs.org/guide/introduction) |

```bash
#!/usr/bin/env bash
# Install Angular CLI
npm install -g @angular/cli
# Install compodoc for Angular
npm install -g @compodoc/compodoc
# Install Vue CLI
npm install -g @vue/cli
```
---
> curl only installs
```

```

---
# Installs that can't happen programmatically
- All games library
	- Steam
	- Riot

# Installs that are more complicated for apt/brew agnostic scripts
- Java
	- intellij
	- maven
	- sdkman (this one is fine actually cus it uses curl but the tools use to build java apps are difficult to boil down to a bash script install so i'm lumping this in with it)