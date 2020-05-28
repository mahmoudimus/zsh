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

# This is loaded *before* .zshrc is loaded
source ~/.common_env/exports_bash.sh
source ~/.common_env/funcs_bash.sh
source ~/.common_env/aliases.sh

source ~/.common_env/sourcer.sh
source ~/.inputrc
