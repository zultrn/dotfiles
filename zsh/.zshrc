# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
PATH=$PATH:~/.cargo/bin
bindkey -e

# Aliases
alias hx=helix
alias ls=lsd
alias cat=bat
alias xcd='cd $(xplr)'
alias :q='exit'
alias cgt='echo $GIT_TOKEN | wl-copy'
alias py=python
alias clr=clear
alias tree='exa -T'
alias rz='. ~/.zshrc'

# Environment Variables
export EDITOR=helix
export TERMINAL=foot

# Sway launch from Virtual terminal
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi

# EOF
eval $(starship init zsh)

source /home/luis/.config/zsh/sudo-plugin/sudo.plugin.zsh
source /home/luis/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/luis/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
