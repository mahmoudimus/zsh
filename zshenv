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
    "${ZDOTDIR:-$HOME}/dotfiles/zsh/ext/prompts/functions"
    $fpath
)
