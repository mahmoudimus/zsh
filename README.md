# zsh

My zsh configurations and customization, relying on the wonderful [prezto](https://github.com/sorin-ionescu/prezto) zsh framework.

## installation (clone)

```bash
git clone --recursive https://github.com/mahmoudimus/zsh.git ~/dotfiles/zsh
cd ~/dotfiles/zsh
./setup.zsh
```

## installation (submodule)

```bash
cd ~/dotfiles
git submodule add https://github.com/mahmoudimus/zsh.git zsh
git submodule update --init --recursive
cd zsh
./setup.zsh
```

### submodules?

I hate git submodules, but this is a pretty good use case for them. We don't want to modify the upstream source for easy forking and modification, so the pattern I decided to go with is defined below. I got this trick from: http://scribu.net/blog/git-alias-for-updating-submodules.html

First, run this:

```bash
git config --global alias.up-sub '!f() { cd $1 && git checkout master && git pull && git submodule update --init --recursive; }; f
```

#### update zsh submodule

- `git up-sub zsh` from the `~/dotfiles/` directory.

#### update prezto submodule

- `git up-sub prezto` from the `~/dotfiles/zsh/` directory.
