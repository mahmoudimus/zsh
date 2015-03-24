#!/usr/local/bin/zsh -f
#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/zprofile"
fi


if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi
