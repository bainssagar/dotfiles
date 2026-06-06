if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#source
source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#startup commands
kotofetch

#aliases
alias rm="rm -I --preserve-root"
alias i="sudo pacman -S"
alias i2="yay -S"
alias s="pacman -Ss"
alias s2="yay -Ss"
alias r="sudo pacman -Rs"
alias vim="nvim"
alias cd="z"
alias ls="eza --color=always --long --icons=always --no-time --group-directories-first"
alias matrix="unimatrix -s 97 -a"
alias install-packages="bash ~/dotfiles/Scripts/install-packages.sh"
alias qs-reload="pkill qs && qs -c noctalia-shell -d"
alias fzf="fzf --layout=reverse --border=rounded --margin=3% --preview='bat {}'"

#defaults
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export PDFVIEWER="papers"
export IMAGEVIEWER="loupe"
export BROWSER="librewolf"
export MUSICPLAYER="amberol"
export VIDEOVIEWER="showtime"

#zoxide
eval "$(zoxide init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/sbains/.lmstudio/bin"
# End of LM Studio CLI section

