#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'

export LESS='-R --use-color -Dd+r$Du+b'
export PS1="\[\033[38;5;1m\]\[\033[48;5;7m\]\t\[$(tput sgr0)\][\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]] \w \n\[$(tput sgr0)\]\[\033[38;5;1m\]\\$\[$(tput sgr0)\] "
