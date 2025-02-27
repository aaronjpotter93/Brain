---
file_type: lecture
status: complete
---

## Ansible

Now a long running way I have been using to manage my dotfiles have been exclusively through ansible. There are several pluses to managing through ansible and there are some negatives

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Pros

- there is tons of online documentation
- its used more than just managing dotfiles
- ansible vault allows for plain storage of ssh keys! which is really cool
- you can also store a bunch of other cool stuff with ansible vault (think auth passcodes)

## Cons

- it can be terribly slow
- it can be hard to make it work for certain tasks, such as installing neovim plugins
- tags can be great and super annoying
- yaml sucks

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Basic Ansible

lets create a simple ansible script to clone neovim from source and build it from a specific tagged version

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## What is ansible?

From their github  

> Ansible is a radically simple IT automation system. It handles configuration management, application deployment, cloud provisioning, ad-hoc task execution, network automation, and multi-node orchestration. Ansible makes complex changes like zero-downtime rolling updates with load balancers easy. More information on the Ansible website.

You are probably thinking... wait... aren't we talking about dotfiles and environments?

  
  

Why yes we are!

  
  

This is a tool designed for "servers" and if you squint your eyes you will realize that you are just working on a "server."

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## NOTE: feel free to just watch

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Install ansible

as all adventures start...

```
pip3 install ansible
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## The heart of ansible

Typically when you are working with ansible you are using an inventory, which is a list of all servers you have proper access to, and a series of playbooks. The playbooks are where we specify the tasks we wish to perform on one or more nodes (machines). The playbook is the heart of ansible

  
  

As a friend once said

> ansible is the helicopter that drops godzilla
> 
> ... godzilla being k8s

  
  

Since we are operating on our own machine we wont need the inventory part, its just `localhost`

  
  

Lets just jump right into the playbook side of ansible which is where all the work is done

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Your First Playbook

Lets start off by creating a playbook that will use git to download the contents of neovim to a directory in a directory of our choosing

- create a new directory, lets call it `mfansible`
- create a file called `neovim.yml`
- input the following

```yml
- name: My first playbook
  hosts: localhost
  tasks:
```

with this alone we can now execute ansible and see the effects

```
ansible-playbook neovim.yml
```

and you should see output that is similar to

```
➜  ansible-neovim-example git:(master) ✗ ansible-playbook neovim.yml
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'

PLAY [The Great Neovim editor] *****************************************************************************************************

TASK [Gathering Facts] *************************************************************************************************************
ok: [localhost]

PLAY RECAP *************************************************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Congrats!

you have ran your first ansible script!

Lets do some git

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets clone down neovim!

When it comes to using ansible, one of my favorite features is the docs and how they are organized. it just makes it so simple to google and get the exact answer out you need. ChatGPT is nice to use, but can sometimes lead you into too much usage of odd features like scripting

- Google ansible git clone
- scroll the documentation and copy the one they suggest
- perhaps combine a few to make this most efficient!

  
  

But where do we put the code we find? Well... remember that empty `tasks` key?

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Task Output

```yaml
- name: My first playbook
  hosts: localhost
  tasks:
  - name: Git neovim
    ansible.builtin.git:
      repo: "https://github.com/neovim/neovim.git"
      dest: "{{ lookup('ansible.builtin.env', 'HOME') }}/personal/neovim"
      version: v0.10.2
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Become familiar with the build first

there will be several libs that you may require to get this working so to do this correctly you will first want to build neovim by hand and keep track of the libraries that you need. There is likely a list of requirements in the [BUILD.md](https://github.com/neovim/neovim/blob/master/BUILD.md)

### Making neovim requires packages

Here are the packages i needed to install from apt to get neovim

```bash
sudo apt install cmake gettext lua5.1 liblua5.1-0-dev
```

### Lets get the libraries first

Lets translate what I installed into an ansible command.

- google how to ansible apt
- copy the proper command

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected Code

Your code should look something like this

```yaml
- name: My first playbook
  hosts: localhost
  tasks:
  - name: Git neovim
    ansible.builtin.git:
      repo: "https://github.com/neovim/neovim.git"
      dest: "{{ lookup('ansible.builtin.env', 'HOME') }}/personal/neovim"
      version: v0.10.2

  - name: Install helping libs
    become: true
    ansible.builtin.apt:
      pkg:
      - lua5.1
      - liblua5.1-0-dev
      - cmake
      - gettext
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## OH NO! Crash!

If you are using apt and have to use sudo you should see the following error.

```bash
TASK [Install neovim's deps] *********************************************************
fatal: [localhost]: FAILED! => {"changed": false, "module_stderr": "sudo: a password is required\n", "module_stdout": "", "msg": "MODULE FAILURE\nSee stdout/stderr for the exact error", "rc": 1}
```

Well ansible does have the ability to become the sudo but it needs the creds to do it, you can type in those creds before installing by using the -K flag

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Now build!

Now all we have to build neovim and then sudo make install! We do the same process

- google make
- copy the relevant instructions
- implement the new tasks
- ...
- neovim (which is profit)!

### To make neovim (from BUILD.md)

The command to run to make neovim is the following:

```bash
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
```

then to install it we need to execute

```bash
sudo make install
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Expected output

```yaml
- name: My first playbook
  hosts: localhost
  tasks:
  - name: Git neovim
    ansible.builtin.git:
      repo: "https://github.com/neovim/neovim.git"
      dest: "{{ lookup('ansible.builtin.env', 'HOME') }}/personal/neovim"
      version: v0.9.4

  - name: Install helping libs
    become: true
    ansible.builtin.apt:
      pkg:
      - lua5.1
      - liblua5.1-0-dev
      - cmake
      - gettext

  - name: neovim
    make:
      chdir: "{{ lookup('ansible.builtin.env', 'HOME') }}/personal/neovim"
      params:
        CMAKE_BUILD_TYPE: "RelWithDebInfo"

  - name: neovim install
    become: true
    make:
      target: install
      chdir: "{{ lookup('ansible.builtin.env', 'HOME') }}/personal/neovim"
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## And that is ansible

that is what it takes to create neovim ansible.

  
  

### Why would i use this over a bash script

A bash script is great when you can execute it on a machine, but ansible allows you to execute all these operations on a bunch of host machines at once, your machine, uniform syntax (yml). It also allows for some custom logic based on operating system so you could interchange out the fetching mechanism to make it machine independent

  
  

Ansible can be real great. It "seems" easier to maintain than having a bunch of bash scripts for each operating system. It can also make automating your setup a bit easier.

  
  

But for me... its a no at this point. I prefer a single script that i control

- some basic convention. Convention over configuration is a mantra i support