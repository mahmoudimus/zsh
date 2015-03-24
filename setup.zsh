#!/bin/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/zsh/z*; do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s "${ZDOTDIR:-$HOME}"/dotfiles/zsh/prezto "${ZDOTDIR:-$HOME}/.zprezto"
