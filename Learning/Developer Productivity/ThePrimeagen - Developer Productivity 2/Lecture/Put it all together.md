---
file_type: lecture
status: queued
---

## Lets install neovim

With ansible we:

- downloaded the neovim source
- built from neovim source
- installed neovim

  
  

Lets build the same thing, but in the bash script now!

```
gituah: git@github.com:neovim/neovim.git <br>
deps: cmake gettext lua5.1 liblua5.1-0-dev
make: make CMAKE_BUILD_TYPE=RelWithDebInfo
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Executable Code

```bash
#!/usr/bin/env bash

git clone git@github.com:neovim/neovim.git ~/personal/neovim
cd ~/personal/neovim
git fetch
git checkout v0.9.2

sudo apt install cmake gettext lua5.1 liblua5.1-0-dev
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## And this is why I like bash

Ansible is great and i used it for years, but in the end i am just going to use bash. I find it easier to maintain and i just find it more enjoyable