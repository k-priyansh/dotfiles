export ZSH="$HOME/.oh-my-zsh" 
# --- Load p10k initialize >>>
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Ohmyzsh Theme initialize >>>
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# --- Autocompletions initialize >>>
fpath=(~/.zsh/site-functions $fpath)
autoload -Uz compinit && compinit

# --- Source other configs initialize >>>
[[ -f $HOME/.zsh/aliases.zsh ]] && source $HOME/.zsh/aliases.zsh
[[ -f $HOME/.zsh/ansible.zsh ]] && source $HOME/.zsh/ansible.zsh
[[ -f $HOME/.zsh/env.zsh ]] && source $HOME/.zsh/env.zsh
[[ -f $HOME/.zsh/eval.zsh ]] && source $HOME/.zsh/eval.zsh
[[ -f $HOME/.zsh/functions.zsh ]] && source $HOME/.zsh/functions.zsh
[[ -f $HOME/.zsh/linuxtools.zsh ]] && source $HOME/.zsh/linuxtools.zsh
[[ -f $HOME/.zsh/omzplugins.zsh ]] && source $HOME/.zsh/omzplugins.zsh
[[ -f $HOME/.zsh/wsl2fix.zsh ]] && source $HOME/.zsh/wsl2fix.zsh
[[ -f $HOME/.zsh/zap.zsh ]] && source $HOME/.zsh/zap.zsh
[[ -f $HOME/.zsh/zstyle.zsh ]] && source $HOME/.zsh/zstyle.zsh
# --- powerlevel10k initialize >>>
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# --- kubectl krew initialize >>>
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# PROMPT="${PROMPT}"$'\n\n'




