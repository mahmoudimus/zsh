# -*- mode: shell-script;-*-
#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv"
fi

fpath=(
    "${ZDOTDIR:-$HOME}/dotfiles/files/zsh/ext/prompts/functions"
    $fpath
)

# https://unix.stackexchange.com/a/62599/14442
# Force path array to have unique values
# https://til.hashrocket.com/posts/7evpdebn7g-remove-duplicates-in-zsh-path
# typeset -aU path
# To add to the path array: path+=(~/foo)
# To add to the path array in front: path=(~/foo "$path[@]")
# If foo already in $path, move to front: path[1,0]=~/foo
#
# Look into funcs_bash.sh to see bash compatible functions (pathappend, pathprepend)

# This is loaded *before* .zshrc is loaded
source ~/.common_env/exports_bash.sh
source ~/.common_env/funcs_bash.sh
source ~/.common_env/aliases.sh

source ~/.common_env/sourcer.sh
source ~/.inputrc
