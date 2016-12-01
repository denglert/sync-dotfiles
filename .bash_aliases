SYS=$(uname -s)
if [ "${SYS}" == "Darwin" ]; then
   # Do something under Mac OS X platform        
	alias l='ls -CF'
	alias ll='ls -alFh'
	alias la='ls -A'
elif [ "${SYS}" == "Linux" ]; then
	alias ls='ls --color=auto'
	alias ll='ls -alFh --color=auto'
	alias l='ls -alFh --color=auto'
	alias la='ls -A --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../.."

alias shreload='source ~/.bashrc'
alias dotpull="cd ~/lib/sys-config/sync-dotfiles; git pull; cd -"
alias dotstatus="cd ~/lib/sys-config/sync-dotfiles; git status; cd -"

alias att="tmux a -t"
alias det="tmux detach"
