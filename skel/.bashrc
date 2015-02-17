# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

utilisateur=$(pwd | cut -d/ -f 4)
PS1="\[\e[1;31m\]${utilisateur}\[\e[0m\] \e[1;32m\]\u@\h\$\[\e[0m\] \e[0;34m\w\[\e[0m\] $ "
