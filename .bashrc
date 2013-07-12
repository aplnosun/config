# .bashrc

# User specific aliases and functions

alias rm='rm -ir'
alias cp='cp -i'
alias mv='mv -i'
alias cls='clear'
alias status='git status'

#change directory
alias src='cd /usr/src/'
alias i:='cd /usr/src/linux'
alias l:='cd /usr/src/linux'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
