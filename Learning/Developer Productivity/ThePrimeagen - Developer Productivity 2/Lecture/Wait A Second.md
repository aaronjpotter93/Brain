---
file_type: lecture
status: queued
---

## We only have talked about getting the software up

What about dotfiles... What about configuration... WHAT ABOUT MY CUSTOMIZATIONS

  
  

For those unfamiliar with the term dotfiles, it simple means a script that is ran at the start of your program. A `.bashrc` / `.zshrc` / `.vimrc` are all examples of dotfiles that run before the program startup is complete. It is the place for you to register your custom functionality or to alter program behavior

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Well we already have everything we need

We have everything we need to get started, we have our reliable environmental script to run, we just need one script that sets up our environment!

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## The Env Idea

- make a script that installs all the environment files.
- make one or more directories to where you like to install files to

  
  

### Lets do this!

- whiteboard time!
- code time!
- lets start by getting the basics of the script ready
    - dry run

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Code

```bash
#!/usr/bin/env bash

script_dir="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
dry="0"

while [[ $# > 0 ]]; do
    if [[ "$1" == "--dry" ]]; then
        dry="1"
    fi
    shift
done

log() {
    if [[ $dry == "1" ]]; then
        echo "[DRY_RUN]: $@"
    else
        echo "$@"
    fi
}

execute() {
    log "execute: $@"
    if [[ $dry == "1" ]]; then
        return
    fi

    "$@"
}

log "--------- dev-env ---------"
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Copy time

Lets create the copy function that will bring over every source directory to the target directory

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected code

```bash
cd $script_dir
copy_dir() {
    pushd $1
    to=$2
    dirs=$(find . -maxdepth 1 -mindepth 1 -type d)
    for dir in $dirs; do
        execute rm -rf $to/$dir
        execute cp -r $dir $to/$dir
    done
    popd
}

copy_dir .config $XDG_CONFIG_HOME
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## And just like that

We have ourselves a way to copy over directories for all of our programs... but what about one off scripts?

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Code

```bash
copy_file() {
    from=$1
    to=$2
    name=$(basename $from)
    execute rm $from
    execute cp $from $to/$name
}

copy_file .specialrc ~/
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## We make things bigger than they are

this will solve about 99% of all dotfile management issues.