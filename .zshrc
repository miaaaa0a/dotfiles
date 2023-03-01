# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nuk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# oh-my-posh thing
eval "$(oh-my-posh init zsh --config ~/.poshthemes/catppuccin_mocha.omp.json)"

# home/end button fix for alacritty
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

# Use emacs key bindings
bindkey -e

# [Home] - Go to beginning of line
if [[ -n "${terminfo[khome]}" ]]; then
  bindkey -M emacs "${terminfo[khome]}" beginning-of-line
  bindkey -M viins "${terminfo[khome]}" beginning-of-line
  bindkey -M vicmd "${terminfo[khome]}" beginning-of-line
fi
# [End] - Go to end of line
if [[ -n "${terminfo[kend]}" ]]; then
  bindkey -M emacs "${terminfo[kend]}"  end-of-line
  bindkey -M viins "${terminfo[kend]}"  end-of-line
  bindkey -M vicmd "${terminfo[kend]}"  end-of-line
fi

# micro theme thing
export "MICRO_TRUECOLOR=1"

# exa instead of ls
alias ls="exa --all --icons"
alias "ls -la"="exa --oneline --all --icons --git -@ -l"

# wayland
export "XDG_CURRENT_DESKTOP=sway"

# Added by path 0.1.0 at Tue Feb 28 18:15:31 2023
[[ -s "/home/nuk/bin/path" ]] && `/home/nuk/bin/path --add /home/nuk/bin --export`

# hyfetch
alias neofetch="hyfetch"
