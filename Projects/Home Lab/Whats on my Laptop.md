---
alias: workstation inventory
---

# To Do
- [ ] take full inventory of whats on this laptop 📅 2025-02-26 
- [ ] use inventory to decide what moves with runs 📅 2025-02-26 
- [ ] clean up this pc: 
	- [ ] delete unused libraries and packages:
		- [ ] remove node modules from archived projects
		- [ ] remove maven libraries from archived projects

# Installations

## Package Managers
ng : /Users/aaronpotter/.npm-global/bin/ng
vue (global): /usr/local/bin/vue
git (global): /usr/bin/git
docker (global): /usr/local/bin/docker
kubectl (global): /usr/local/bin/kubectl
aws (global): /usr/local/bin/aws
vim (global): /usr/bin/vim
nano (global): /usr/bin/nano
code (global): /usr/local/bin/code
brew (global): /opt/homebrew/bin/brew
python3 (global): /opt/homebrew/bin/python3
node (global): /usr/local/bin/node
java (global): /Users/aaronpotter/.sdkman/candidates/java/current/bin/java
mvn (global): /opt/apache-maven-3.9.9/bin/mvn

```
aaronpotter@Kens-MBP terminal_scripts % pkmg

Installed by Brew (including dependencies)
-----------------------------------------
==> Formulae
age                     frei0r                  leptonica               libssh                  lz4                     pdftk-java              tldr
aom                     fribidi                 libarchive              libssh2                 lzo                     pipx                    tmux
aribb24                 fzf                     libass                  libtasn1                mbedtls                 pixman                  tre
aws-elasticbeanstalk    gettext                 libb2                   libtiff                 mpdecimal               python-packaging        tree
bat                     gh                      libbluray               libunibreak             mpg123                  python@3.13             unbound
brotli                  giflib                  libdeflate              libunistring            navi                    rav1e                   utf8proc
ca-certificates         glib                    libevent                libvidstab              ncurses                 readline                webp
cairo                   gmp                     libexif                 libvmaf                 nettle                  rubberband              wget
ccat                    gnutls                  libgit2                 libvorbis               oniguruma               sdl2                    x264
certifi                 graphite2               libidn2                 libvpx                  opencore-amr            snappy                  x265
cjson                   harfbuzz                libmicrohttpd           libx11                  openexr                 sops                    xorgproto
dav1d                   highway                 libnghttp2              libxau                  openjdk@11              speex                   xvid
expat                   icu4c@76                libogg                  libxcb                  openjpeg                sqlite                  xz
ffmpeg                  imath                   libpng                  libxdmcp                openssl@3               sqlite-utils            yq
ffmpegthumbnailer       jp2a                    librist                 libxext                 opus                    srt                     zeromq
figlet                  jpeg-turbo              libsamplerate           libxrender              p11-kit                 svt-av1                 zimg
flac                    jpeg-xl                 libsndfile              libyaml                 pandoc                  tesseract               zoxide
fontconfig              jq                      libsodium               libzip                  pango                   thefuck                 zstd
freetype                lame                    libsoxr                 little-cms2             pcre2                   theora

==> Casks
basictex        ghostty         vagrant         virtualbox

Installed by Brew (exluding dependencies)
-----------------------------------------
age
aws-elasticbeanstalk
bat
ccat
ffmpegthumbnailer
figlet
gh
jp2a
jq
navi
pandoc
pdftk-java
pipx
sops
sqlite-utils
thefuck
tldr
tmux
tre
tree
wget
yq
zoxide



NODE
=========================================
npm is installed

Installed by NPM
-----------------------------------------
/Users/aaronpotter/.npm-global/lib
├── @angular/cli@19.0.2
├── @compodoc/compodoc@1.1.26
├── @vue/cli@5.0.8
└── vue-generate-component@3.0.1


PYTHON3
=========================================
pip3 is installed
pip 24.3.1 from /Library/Frameworks/Python.framework/Versions/3.12/lib/python3.12/site-packages/pip (python 3.12)
pip (for Python 3.12) is installed


Python Framework (3.12):
=========================================
2to3                    chardetect              idle3.12                pydoc3                  python3                 python3-intel64         python3.12-config
2to3-3.12               idle3                   normalizer              pydoc3.12               python3-config          python3.12              python3.12-intel64


pip3 installed packages:
-----------------------------------------
certifi   2025.1.31
packaging 24.2
pip       25.0
wheel     0.45.1


Virtual Environments:
-----------------------------------------
Currently not calling the virtual environments function because I don't know where to point it to look for vm envs

Installed by pipx
-----------------------------------------
venvs are in /Users/aaronpotter/.local/pipx/venvs
apps are exposed on your $PATH at /Users/aaronpotter/.local/bin
manual pages are exposed at /Users/aaronpotter/.local/share/man
   package ranger-fm 1.9.4, installed using Python 3.13.1
    - ranger
    - rifle
    - man1/ranger.1
    - man1/rifle.1

User-specific executables (~/.local/bin):
=========================================
ranger  rifle


JAVA
=========================================
sdkman! installation directory: /Users/aaronpotter/.sdkman

running command: 'sdk list java'
================================================================================
 Vendor        | Use | Version      | Dist    | Status     | Identifier
--------------------------------------------------------------------------------
 Corretto      |     | 8.0.442      | amzn    | installed  | 8.0.442-amzn
 GraalVM CE    | >>> | 21.0.2       | graalce | installed  | 21.0.2-graalce
 Temurin       |     | 17.0.9       | tem     | local only | 17.0.9-tem
 Temurin       |     | 17.0.0       | tem     | local only | 17.0.0-tem

================================================================================

MAVEN
=========================================
Apache Maven is installed at /opt/apache-maven-3.9.9
Apache Maven 3.9.9 (8e8579a9e76f7d015ee5ec7bfcdc97d260186937)
Maven home: /opt/apache-maven-3.9.9
Java version: 21.0.2, vendor: GraalVM Community, runtime: /Users/aaronpotter/.sdkman/candidates/java/21.0.2-graalce
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "14.5", arch: "aarch64", family: "mac"


TeX
=========================================
TeX is installed
afm2tfm         dvips           fmtutil-user    kpsereadlink    luatex          mft             mpost           pktype          texhash         updmap-sys      xelatex-unsafe
bibtex          dvitomp         gftodvi         kpsestat        lwarpmk         mkindex         mptopdf         r-mpost         texlua          updmap-user     xetex
dvilualatex     ebb             gftopk          kpsewhich       makeindex       mktexfmt        pdfatfi         rungs           texluac         xdvi            xetex-unsafe
dviluatex       etex            gftype          latex           man             mktexlsr        pdfetex         simpdftex       thumbpdf        xdvi-xaw
dvipdfm         extractbb       inimf           luahbtex        mf              mktexmf         pdflatex        synctex         tlmgr           xdvipdfmx
dvipdfmx        fmtutil         initex          lualatex        mf-nowin        mktexpk         pdftex          teckit_compile  tlshell         xelatex
dvipdft         fmtutil-sys     kpseaccess      luaotfload-tool mfplain         mktextfm        pktogf          tex             updmap          xelatex-dev

TeX
=========================================
TeX Live/MacTeX is installed (tlmgr found).

All CLI's
=========================================
ng (global): /Users/aaronpotter/.npm-global/bin/ng
vue (global): /usr/local/bin/vue
create-react-app (global): NOT found
git (global): /usr/bin/git
docker (global): /usr/local/bin/docker
kubectl (global): /usr/local/bin/kubectl
aws (global): /usr/local/bin/aws
vim (global): /usr/bin/vim
nano (global): /usr/bin/nano
code (global): /usr/local/bin/code
brew (global): /opt/homebrew/bin/brew
node (global): /usr/local/bin/node
python (global): NOT found
java (global): /Users/aaronpotter/.sdkman/candidates/java/current/bin/java
mvn (global): /opt/apache-maven-3.9.9/bin/mvn
gradle (global): NOT found
terraform (global): NOT found
ansible (global): NOT found
gcloud (global): NOT found
az (global): NOT found


Plugin Managers:
=========================================
packer.nvim is NOT installed
lazy.nvim is NOT installed


GUI Applications
=========================================
running command: 'ls /Applications
-----------------------------------------
4K Tokkit.app                           Google Chrome.app                       Numbers.app                             Steam.app
4K YouTube to MP3.app                   Google Docs.app                         Obsidian.app                            Telegram.app
Amazon Kindle.app                       Google Drive.app                        OneDrive.app                            Trae.app
ChatGPT.app                             Google Sheets.app                       OneMenu.app                             Utilities
Discord.app                             Google Slides.app                       Pages.app                               Visual Studio Code.app
Docker.app                              IntelliJ IDEA.app                       Postman.app                             Xcode.app
Family Tree.app                         Keynote.app                             Python 3.12                             __MACOSX
GeForceNOW.app                          Minecraft.app                           QNAPQfinderProMac-7.11.0.0529.dmg       lghub.app
Ghostty.app                             Mixxx.app                               Safari.app                              zoom.us.app
GlobalProtect.app                       MySQLWorkbench.app                      Solitaire.app

running command: 'ls ~/Applications
-----------------------------------------
Chrome Apps.localized   Spotify.app
```

---
> `ls` /usr/local/bin

```
2to3
2to3-3.12
VBoxAudioTest
VBoxAutostart
VBoxBalloonCtrl
VBoxBugReport
VBoxHeadless
VBoxManage
VBoxVRDP
VirtualBox
VirtualBoxVM
aws
aws_completer
code
corepack
docker
docker-compose
docker-credential-desktop
docker-credential-osxkeychain
hub-tool
idle3
idle3.12
kubectl
kubectl.docker
node
npm
npx
pip3
pip3.12
pydoc3
pydoc3.12
python3
python3-config
python3-intel64
python3.12
python3.12-config
python3.12-intel64
trae
vagrant
vagrant-go
vbox-img
vboximg-mount
vue
```

---

> `brew leaves`

```
age
aws-elasticbeanstalk
bat
ccat
ffmpegthumbnailer
figlet
gh
jp2a
jq
navi
pandoc
pdftk-java
pipx
sops
sqlite-utils
thefuck
tldr
tmux
tre
tree
wget
yq
zoxide
```

>`brew list`

```console
Casks
---------
basictex
ghostty
vagrant
virtualbox
```












---
**Table 1: Package Managers and Their Locations**

| Package Manager | Location                                           | Primary Purpose              |
| --------------- | -------------------------------------------------- | ---------------------------- |
| Brew            | /opt/homebrew/bin/brew                             | macOS package manager        |
| NPM             | ~/.npm-global                                      | Node.js package manager      |
| Pip3            | /Library/Frameworks/Python.framework/Versions/3.12 | Python package manager       | 
| Pipx            | ~/.local/pipx                                      | Python application installer |
| SDKMAN          | ~/.sdkman                                          | Java development kit manager |
| Maven           | /opt/apache-maven-3.9.9                            | Java dependency manager      |

---
**Table 3: CLI Tools and Their Package Managers**

| CLI Tool       | Location                                   | Installing Manager       |     |
| -------------- | ------------------------------------------ | ------------------------ | --- |
| ng             | ~/.npm-global/bin/ng                       | NPM                      |     |
| vue            | /usr/local/bin/vue                         | NPM                      |     |
| docker         | /usr/local/bin/docker                      | Docker Desktop Installer |     |
| docker-compose | /usr/local/bin                             | Docker Desktop Installer |     |
| kubectl        | /usr/local/bin/kubectl                     | Docker/Unidentified      |     |
| aws            | /usr/local/bin/aws                         | Brew                     |     |
| code           | /usr/local/bin/code                        | VS Code Installer        |     |
| python3        | Multiple locations                         | Brew/Python Installer    |     |
| node           | /usr/local/bin/node                        | Unidentified             |     |
| npm            | /usr/local/bin/npm                         | Node Installer           |     |
| java           | ~/.sdkman/candidates/java/current/bin/java | SDKMAN                   |     |
| mvn            | /opt/apache-maven-3.9.9/bin/mvn            | Manual Installation      |     |
| ranger         | ~/.local/bin/ranger                        | Pipx                     |     | 
| rifle          | ~/.local/bin/rifle                         | Pipx                     |     |
| vagrant        | /usr/local/bin/vagrant                     | Brew Cask                |     |
| VirtualBox     | /usr/local/bin/VBox*                       | Brew Cask                |     |

---
















| CLI Tool                      | Location                                   | Installing Manager  | Notes                      |
| ----------------------------- | ------------------------------------------ | ------------------- | -------------------------- |
| **Node.js Related**           |                                            |                     |                            |
| ng                            | ~/.npm-global/bin/ng                       | NPM                 | Angular CLI                |
| node                          | /usr/local/bin/node                        | Node Installer      |                            |
| npm                           | /usr/local/bin/npm                         | Node Installer      |                            |
| npx                           | /usr/local/bin/npx                         | Node Installer      |                            |
| vue                           | /usr/local/bin/vue                         | NPM                 | Vue CLI                    |
| corepack                      | /usr/local/bin/corepack                    | Node Installer      | Package manager manager    |
| **Python Related**            |                                            |                     |                            |
| python3*                      | Multiple locations                         | Python/Brew         | Various Python executables |
| pip3*                         | /usr/local/bin                             | Python Installation | Package installer          |
| idle3*                        | /usr/local/bin                             | Python Installation | Python IDE                 |
| pydoc3*                       | /usr/local/bin                             | Python Installation | Documentation tool         |
| 2to3*                         | /usr/local/bin                             | Python Installation | Python 2to3 converter      |
| **Docker Related**            |                                            |                     |                            |
| docker                        | /usr/local/bin/docker                      | Docker Desktop      |                            |
| docker-compose                | /usr/local/bin                             | Docker Desktop      |                            |
| docker-credential-desktop     | /usr/local/bin                             | Docker Desktop      |                            |
| docker-credential-osxkeychain | /usr/local/bin                             | Docker Desktop      |                            |
| hub-tool                      | /usr/local/bin                             | Docker Desktop      | Docker Hub CLI tool        |
| **VirtualBox Related**        |                                            |                     |                            |
| VBoxAudioTest                 | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxAutostart                 | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxBalloonCtrl               | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxBugReport                 | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxHeadless                  | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxManage                    | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VBoxVRDP                      | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| VirtualBox                    | /usr/local/bin                             | Brew Cask           | Main VirtualBox executable |
| VirtualBoxVM                  | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| vbox-img                      | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| vboximg-mount                 | /usr/local/bin                             | Brew Cask           | VirtualBox component       |
| **AWS Related**               |                                            |                     |                            |
| aws                           | /usr/local/bin/aws                         | Brew                | AWS CLI                    |
| aws_completer                 | /usr/local/bin                             | Brew                | AWS CLI component          |
| **Java Related**              |                                            |                     |                            |
| java                          | ~/.sdkman/candidates/java/current/bin/java | SDKMAN              |                            |
| mvn                           | /opt/apache-maven-3.9.9/bin/mvn            | Manual Installation | Maven                      |
| **Vagrant Related**           |                                            |                     |                            |
| vagrant                       | /usr/local/bin/vagrant                     | Brew Cask           |                            |
| vagrant-go                    | /usr/local/bin                             | Brew Cask           |                            |
| **Other Tools**               |                                            |                     |                            |
| code                          | /usr/local/bin/code                        | VS Code Installer   | Visual Studio Code         |
| kubectl                       | /usr/local/bin/kubectl                     | Docker/Kubernetes   |                            |
| kubectl.docker                | /usr/local/bin                             | Docker Desktop      |                            |
| ranger                        | ~/.local/bin/ranger                        | Pipx                | File manager               |
| rifle                         | ~/.local/bin/rifle                         | Pipx                | File opener                |
| trae                          | /usr/local/bin                             | Unidentified        |                            |



WHERE IS MYSQL?? 




#### Software
##### Applications
| Current                | Keep             |
| ---------------------- | ---------------- |
| Discord.app            | :LiCheck:        |
| Postman.app            | :RiQuestionMark: |
| Trae.app               | :LiCheck:        |
| Ghostty.app            | :LiCheck:        |
| ChatGPT.app            |                  |
| Visual Studio Code.app | :LiCheck:        |
| Amazon Kindle.app      |                  |
| __MACOSX               |                  |
| IntelliJ IDEA.app      | :LiCheck:        |
| lghub.app              | :LiCheck:        |
| Google Docs.app        |                  |
| Google Sheets.app      |                  |
| Google Slides.app      |                  |
| Google Drive.app       | :LiCheck:        |
| Obsidian.app           | :LiCheck:        |
| Docker.app             | :LiCheck:        |
| 4K Tokkit.app          |                  |
| zoom.us.app            |                  |
| MySQLWorkbench.app     | :RiQuestionMark: |
| GeForceNOW.app         | :RiQuestionMark: |
| Google Chrome.app      | :LiCheck:        |
| GlobalProtect.app      |                  |
| Minecraft.app          | :LiCheck:        |
| OneMenu.app            | :RiQuestionMark: |
| Python 3.12            | :LiCheck:        |
| 4K YouTube to MP3.app  | :LiCheck:        |
| Mixxx.app              | :LiCheck:        | 

#### CLI Package Managed Programs
| Current              | Keep      | Summary                                                            |
| -------------------- | --------- | ------------------------------------------------------------------ |
| age                  | :LiCheck: | A simple, modern and secure file encryption tool (and Go library). |
| aws-elasticbeanstalk |           | AWS Elastic Beanstalk CLI                                          |
| bat                  | :LiCheck: | A cat(1) clone with wings.                                         |
| ccat                 |           | Colorizing cat.                                                    |
| ffmpegthumbnailer    |           | Generate thumbnails for video files using ffmpeg.                  |
| figlet               |           | Display large characters made up of ordinary screen characters.    |
| gh                   | :LiCheck: | GitHub CLI                                                         |
| jp2a                 |           | Convert JPG to ASCII.                                              |
| jq                   |           | Lightweight and flexible command-line JSON processor.              |
| navi                 | :LiCheck: | An interactive cheatsheet tool for the command-line.               |
| pandoc               |           | Universal markup converter.                                        |
| pdftk-java           |           | PDFtk Server Java CLI Wrapper.                                     |
| pipx                 |           | Install and run Python applications in isolated environments.      |
| sops                 | :LiCheck: | Editor of encrypted files.                                         |
| sqlite-utils         |           | CLI utility for manipulating SQLite databases.                     |
| thefuck              | :LiCheck: | Magnificent app which corrects your previous console command.      |
| tldr                 | :LiCheck: | Simplified and community-driven man pages.                         |
| tmux                 | :LiCheck: | Terminal multiplexer.                                              |
| tre                  |           | tree with colors                                                   |
| tree                 | :LiCheck: | Displays an indented directory tree, in color.                     |
| wget                 |  :LiCheck:         | The non-interactive network downloader.                            |
| yq                   |           | a lightweight and portable command-line YAML processor             |
| zoxide               |           | A faster way to navigate your filesystem.                          |


# Projects




