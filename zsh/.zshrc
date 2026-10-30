#source
source /usr/share/cachyos-zsh-config/cachyos-config.zsh

#startup commands
kotofetch --source=true

#aliases
alias i="sudo pacman -S"
alias i2="yay -S"
alias s="pacman -Ss"
alias s2="yay -Ss"
alias r="sudo pacman -Rnu"
alias cd="z"
alias ls="eza --color=always --long --icons=always --no-time --group-directories-first"
alias matrix="unimatrix -s 97 -a"
alias install-packages="bash ~/dotfiles/scripts/install-packages.sh"

#defaults
export EDITOR="zeditor"
export VISUAL="zeditor"
export SUDO_EDITOR="zeditor"

#zoxide
eval "$(zoxide init zsh)"

#starship
eval "$(starship init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/sbains/.lmstudio/bin"
