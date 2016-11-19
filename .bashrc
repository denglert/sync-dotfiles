# .bashrc
#[[ $- == *i* ]] || return

# - Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# - Useful aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# - Local, host specific user defined environment variables are loaded from here
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi


##################################

# - Source bashmarks
source ~/.local/bin/bashmarks.sh

# - Source utilfunctions
source ~/.local/bin/utilfunctions.sh
