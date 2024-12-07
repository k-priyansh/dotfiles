# >>> Direnv initialize >>>
eval "$(direnv hook zsh)"

# >>> fzf initialize >>>
eval "$(fzf --zsh)"

# >>> zozide initialize >>>
eval "$(zoxide init zsh)"s

# >>> thefuck initialize >>>
eval "$(thefuck --alias)"
eval "$(thefuck --alias fk)"

# >>> Starship initialize >>>
eval "$(starship init zsh)"

# >>> homebrew initialize >>>
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
