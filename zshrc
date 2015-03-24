#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Set the list of directories that Zsh searches for programs.
path=(
    $HOME/bin
    $HOME/.local/bin
    /usr/local/{bin,sbin}
    $path
)

source ~/.dotfiles/exports_bash.sh
source ~/.dotfiles/funcs_bash.sh
source ~/.dotfiles/aliases.sh
source ~/.inputrc

# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# I hate you chefdk
if [[ -d "/opt/chefdk/bin" ]]; then
    path=(/opt/chefdk/bin $path)
fi

# # Source virtual env wrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# added by travis gem
[ -f /Users/mahmoud/.travis/travis.sh ] && source /Users/mahmoud/.travis/travis.sh
