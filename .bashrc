# The SSH command execution shell is a non-interactive shell, whereas your
# normal shell is either a login shell or an interactive shell.

# .bashrc
[[ $- == *i* ]] || return

# - Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi 
# - Useful aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# - Bash shell prompt customization
if [ -f ~/.bash_customization ]; then
    . ~/.bash_customization
fi

# - Local, host specific user defined environment variables are loaded from here
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

#########################################

#######################
### --- Scripts --- ###
#######################

# - Source bashmarks
if [ -f ~/.local/bin/bashmarks.sh ]; then
	. ~/.local/bin/bashmarks.sh
fi

# - Source utilfunctions
if [ -f ~/.local/bin/utilfunctions.sh ]; then
	. ~/.local/bin/utilfunctions.sh
fi

# - Source tmux
if [ -f ~/.local/bin/tmux.sh ]; then
	. ~/.local/bin/tmux.sh
fi
