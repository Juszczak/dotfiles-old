# gnu ls for osx
# ~/.bash/utils/gls.sh
# Adrian Juszczak

# gnu environmen
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

dircolors=~/.dircolors
if [ -f $dircolors ]; then
  eval `gdircolors -b $dircolors`
fi

alias ls="gls --color=always -F"
alias grep="grep --color=always"
alias egrep="egrep --color=always"
