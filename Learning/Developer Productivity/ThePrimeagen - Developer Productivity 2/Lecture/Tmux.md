---
file_type: lecture
status: queued
---

## The Terminal Experience

I have a list of things i want in my terminal to make it useful and it all is

centered around navigation.

### What I Want

1. sessions that last even when i close my terminal
2. multiple running sessions, and these sessions are based on directory
3. "tabs" within a session
4. navigate to any session by directory name "instantly"
5. navigate to any session by directory with fuzzy find
6. run scripts or whatever programs i want when navigating to a directory

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## I Choose Tmux

I personally use tmux + ghostty, though i hear wezterm, another terminal emulator, you can emulate pretty much every way I use tmux. I have not used wezterm so i cannot speak much about it. Zellij has similar experience but more modern

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Quick Notes

- About 3 years ago I did the first version of Dev productivity and some things about my setup has changed, and parts have remained the same. After 3 years, this is still my most useful script I have ever created. But i have added some significant improvements to the script

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Installing TMUX

|Platform|Install Command|
|---|---|
|Arch Linux|`pacman -S tmux`|
|Debian or Ubuntu|`apt install tmux`|
|Fedora|`dnf install tmux`|
|RHEL or CentOS|`yum install tmux`|
|macOS (using Homebrew)|`brew install tmux`|
|macOS (using MacPorts)|`port install tmux`|
|openSUSE|`zypper install tmux`|

### Base Config

Here is the basic config that will make life easier. This will ensure that you have a similar experience to me

```bash
set -g default-terminal "tmux-256color"
set -s escape-time 0
set -g base-index 1

# optional -- i like C-a not C-b (pure preference)
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# vi key movement for copy/pasta mode
set-window-option -g mode-keys vi
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

# <WHERE YOUR TMUX CONF GOES> = XDG_CONFIG_HOME/tmux/tmux.conf
# <WHERE YOUR TMUX CONF GOES> = ~/.tmux.conf
bind r source-file <WHERE YOUR TMUX CONF GOES> \; display-message "tmux.conf reloaded"
```

### Install it via our dev-env!

We can even use our fancy new dev-env script to install it!

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets navigate tmux

Lets go through some basic commands about tmux so you can see how they work with just usage. I will show you the ones I use and some that I don't use

ource /home/theprimeagen/.tmux-sessionizer what is prefix key

### just using -* commands

- creating window
- detaching
- attaching
- showing all running sessions
- killing pane / window / session
- creating and navigating splits
    - tmux is controlled by a config

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## A bit of customization

I like to navigate my tmux panes like i navigate my vim windows

lets try this out:

```bash
# Add to your tmux.conf file
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Based on my previous 5 points, only two have been met.

> 1. sessions that last even when i close my terminal
> 2. "tabs" within a session

  
  

It turns out that `tmux` is also scriptable! And its quite fantastic

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## The Session API

A `target` is a tuple of `<session_name>[:<widx>|<wname>[.<pane_idx>]]`

```bash
tmux new-session -s <sname> -n <initial wname> -d[etach]
tmux list-sessions
tmux attach-session -t <target>
tmux has-session -t <target> # don't forget -t vs -t=
tmux switch-client -t <target>
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## The Window API

```bash
tmux new-window -n <name> [-t session:window_index]
tmux list-windows [-t session]
tmux select-window -t session:[window_idx | window_name].[pane_idx]
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Other fun apis

```bash
tmux send-keys -t <target> "text" [ctrl keys,...]
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets start with our first script

From my original points, we still have 4 points left to address to create the "perfect" navigation system for the terminal

### What I Want

1. ~~sessions that last even when i close my terminal~~
2. multiple running sessions, and these sessions are based on directory
3. ~~"tabs" within a session~~
4. navigate to any session by directory name "instantly"
5. navigate to any session by directory with fuzzy find
6. run scripts or whatever programs i want when navigating to a directory

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets Address Point 6 First

This is one of the easier points to address (a bit weird)

```
1. run scripts or whatever programs i want when navigating to a directory
```

- opens and creates the configuration you want for a project ** gimp **

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Opener script

```bash
#!/usr/bin/env bash

if [[ -x ./.ready-tmux ]]; then
    ./.ready-tmux
elif [[ -x ~/.ready-tmux ]]; then
    ~/.ready-tmux
fi
clear
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Thats pretty cool?

That was pretty awesome that we can create all the windows / splits we want with a simple script (don't worry, it'll get a lot better)

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Progress

We have checked off another component of what I consider a great terminal experience

  
  

But we still have a few left

> 1. multiple running sessions, and these sessions are based on directory
> 2. navigate to any session by directory name "instantly"
> 3. navigate to any session by directory with fuzzy find

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Detour time

FZF is an incredible tool for fuzzy finding. Its not just for finding directories. You can fuzzy find on anything you pass in and is often used within text editors.

### I will add fzf to my scripts

`dev-env/runs/libs`

```bash
# ... other libs i install ...

git clone git@github.com:junegunn/fzf.git $HOME/personal/fzf
$HOME/personal/fzf/install
```

`dev-env/env/.zsh_profile`

```bash
## All that sweet sweet fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```

### Execute

Make sure i only run my libs script `run --dry libs`

Run my lib script `run libs`

Copy all of my files over `dev-env`

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Test run

try pressing `C-r` (Control + r) and it should bring up a beautiful fuzzy find comparatively to your standard `C-r` from the terminal

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Playing with FZF

input

```bash
➜  dev-prod-2 git:(main) ✗ echo "1\n2\n3" | fzf
```

output

```bash
  3
  2
▌ 1
  3/3 ────────────────────────────────────────────────────────────────────────────────────────────────────────────────
>
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets solve the last problems

> 1. multiple running sessions, and these sessions are based on directory
> 2. navigate to any session by directory name "instantly"
> 3. navigate to any session by directory with fuzzy find

### Some notes

- We don't want to search _every_ directory on the file system, we want to have some sort of subset.
    
- We want to navigate based on the results of FZF
    

### CODE TIME!!

Lets start this MF script (MF = Mother FZF):

- get a selected directory from fzf.
- create a clean tmux session name

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Code

```bash
#!/usr/bin/env bash

selected=$(find ~/personal -mindepth 1 -maxdepth 1 -type d | fzf)
if [[ -z "$selected" ]]; then
    exit 0
fi
selected_name=$(basename $selected | tr ".,: " "____")
echo "selected!! $selected -- selected_name $selected_name"
```

### Lets make the script gooooood

- if there is, navigate to that session
- if there is not, create that session and navigate to it

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Code

```bash
#!/usr/bin/env bash

selected=$(find ~/personal -maxdepth 1 -mindepth 1 -type d | fzf)
if [[ -z "$selected" ]]; then
    exit 0
fi
selected_name=$(basename $selected | tr ".,: " "____")

switch_to() {
    if [[ -z "$TMUX" ]]; then
        tmux attach-session -t $selected_name
    else
        tmux switch-client -t $selected_name
    fi
}

if tmux has-session -t="$selected_name"; then
    switch_to
else
    tmux new-session -ds $selected_name -c $selected
    switch_to
fi
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Remember our previous scriptedy-tmux

It would be nice if we could combine our two scripts...

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Next Expected Script

```bash
#!/usr/bin/env bash

selected=$(find ~/personal -maxdepth 1 -mindepth 1 -type d | fzf)
if [[ -z "$selected" ]]; then
    exit 0
fi
selected_name=$(basename $selected | tr ".,: " "____")

switch_to() {
    if [[ -z "$TMUX" ]]; then
        tmux attach-session -t $selected_name
    else
        tmux switch-client -t $selected_name
    fi

    tmux send-keys -t $selected_name "ready-tmux"
    tmux send-keys -t $selected_name "welcome to fem"
}

if tmux has-session -t="$selected_name"; then
    switch_to
else
    tmux new-session -ds $selected_name -c $selected
    switch_to
fi
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## How do i execute this?

- we copy it to a $PATH location
- we can create a tmux shortcut to execute it