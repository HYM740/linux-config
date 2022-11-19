# 2022/11/19
# ~/.bashrc
#

# 非交互模式则什么都不做
# 避免影响脚本的执行
[[ $- != *i* ]] && return

# 设置颜色
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
export LESS='-R --use-color -Dd+r$Du+b'

# 自定义命令提示符
export PS1="\[\033[38;5;1m\]\[\033[48;5;7m\]\t\[$(tput sgr0)\][\[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]] \w \n\[$(tput sgr0)\]\[\033[38;5;1m\]\\$\[$(tput sgr0)\] "

# 一些有用的ls别名
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'

# 解压缩函数
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }