# -*- mode: shell-script;-*-
# .zshenv is always sourced and should contain variables exported to
# other programs, such as $PATH, $EDITOR and so on.
# .zshenv → [.zprofile if login] → [.zshrc if interactive]
#  → [.zlogin if login] → [.zlogout if cleanup before logout].
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

# This is loaded *before* .zshrc is loaded
# Path
# ----
# # https://unix.stackexchange.com/a/62599/14442
# Force path array to have unique values
# https://til.hashrocket.com/posts/7evpdebn7g-remove-duplicates-in-zsh-path
# typeset -aU path
# To add to the path array: path+=(~/foo)
# To add to the path array in front: path=(~/foo "$path[@]")
# If foo already in $path, move to front: path[1,0]=~/foo
#
# Look into funcs_bash.sh to see bash compatible functions (pathappend, pathprepend)
source ~/.common_env/exports_bash.sh
source ~/.common_env/funcs_bash.sh
source ~/.common_env/aliases.sh

source ~/.common_env/sourcer.sh
