# -*- mode: shell-script;-*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# In MacOS Catalina, ZSH is the default shell, so as a result,
# the /etc/zshrc is evaluated _after_ zshenv and overrides some
# values in our our sourced files.
#
# So, we move our file sourcers to zshrc instead.
#
set +x
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

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source ~/.common_env/aliases.sh
source ~/.common_env/sourcer.sh
source ~/.inputrc

if hash glocate > /dev/null; then
    alias locate="noglob glocate"
    [[ -f "$HOME/locatedb" ]] && export LOCATE_PATH="$HOME/locatedb"
fi

source /Users/mahmoud/.iterm2_shell_integration.zsh
# Force path array to have unique values
typeset -aU path
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export HISTSIZE=10000000
export SAVEHIST=10000000

unalias gls

# must be last file sourced
source_if_exists "${HOME}/.fzf.zsh" || false

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mahmoud/.sdkman"
[[ -s "/Users/mahmoud/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mahmoud/.sdkman/bin/sdkman-init.sh"
