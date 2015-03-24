#!/bin/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/files/zsh/z*; do
    if [[ ! -s "${ZDOTDIR:-$HOME}/.${rcfile:t}" ]]; then
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    fi
done

if [[ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]]; then
    ln -s "${ZDOTDIR:-$HOME}"/dotfiles/files/zsh/prezto "${ZDOTDIR:-$HOME}/.zprezto"
fi

