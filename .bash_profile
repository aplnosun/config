# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export LANG="ko_KR.UTF-8"
export LC_ALL="ko_KR.UTF-8"

# screen -ls|grep Dead && screen -wipe
# screen -ls|grep STUDY && exec screen -x || exec screen -S STUDY

