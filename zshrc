#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source /Users/mahmoud/.iterm2_shell_integration.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mahmoud/src/vgs/technical_accounting/.gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mahmoud/src/vgs/technical_accounting/.gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mahmoud/src/vgs/technical_accounting/.gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mahmoud/src/vgs/technical_accounting/.gcloud/google-cloud-sdk/completion.zsh.inc'; fi
