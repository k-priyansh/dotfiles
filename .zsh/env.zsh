# -----------------------------------------------------
# Path
# -----------------------------------------------------
# Added location to path variable for path
export PATH="/usr/lib/ccache/bin/:$PATH" 
# Set zsh configuration
export ZSH="$HOME/.oh-my-zsh" 
# Set editor to vscode
export EDITOR=/usr/share/code/bin/code 
# Added locations to path variable for cargo
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin 
# Added location to path variable
# export PATH=$PATH:$HOME/Projects/christianlempa/central-cli 
# Added location to path variable for nvm
export NVM_DIR="$HOME/.nvm" 
# Added location to path variable for pyenv
export PYENV_ROOT="$HOME/.pyenv"
# -----------------------------------------------------
# Vagrant config needed inside WSL2
# -----------------------------------------------------
# Set default provider to Hyper-V 
export VAGRANT_DEFAULT_PROVIDER="hyperv"
# Enable Windows access for WSL2 
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1" 
# Added location to path variable
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH" 
# --- Bat initialize >>>
export BAT_THEME=/home/ipriyansh/.config/bat/themes/sublime-snazzy

# -----------------------------------------------------
# NVM directory
# -----------------------------------------------------
### ---- load nvm ---------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NVM lazy load
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
  alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
  alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
fi
# -----------------------------------------------------
# gpg agent config with pinentry-mac
# -----------------------------------------------------
# export GPG_TTY=$(tty) # based on this guide https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e

# -----------------------------------------------------
# pyenv
# -----------------------------------------------------
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# ### add local bin to path
# export PATH=$HOME/bin:$PATH 

# -----------------------------------------------------
# sdkman
# -----------------------------------------------------
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# -----------------------------------------------------
# conda
# -----------------------------------------------------
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/ipriyansh/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/ipriyansh/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/ipriyansh/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/ipriyansh/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup

# -----------------------------------------------------
# pdtm tool
# -----------------------------------------------------
# Generated for pdtm. Do not edit.
export PATH=$PATH:/home/ipriyansh/.pdtm/go/bin
