set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# history.
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

# Set default editors
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'

# XDG directories
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Path
export PATH="$HOME/foundry/anvil/bin:$PATH"
export PATH="$HOME/foundry/anvil/terminal/.config/decorator/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

HELPERS_DIRECTORY="$XDG_CONFIG_HOME/shell/"
for file in "$HELPERS_DIRECTORY"/*.sh; do
        if [ -f "$file" ]; then
                source "$file"
        fi
done

# Zoxide
eval "$(zoxide init bash)"

# Starship
eval "$(starship init bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.local/share/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - path)"

# Created by `pipx`
export PATH="$PATH:$HOME/.local/bin"
