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

### update prezto

Got this trick from: http://scribu.net/blog/git-alias-for-updating-submodules.html

First, run this:

```bash
git config --global alias.up-sub '!f() { cd $1 && git checkout master && git pull && git submodule update --init --recursive; }; f
```

Second: `git up-sub prezto` from the `~/dotfiles/zsh/` directory.
