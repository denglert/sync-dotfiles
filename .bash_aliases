# - Terminal --color=auto option
SYS=$(uname -s)
if [ "${SYS}" == "Darwin" ]; then
   # Do something under Mac OS X platform        
	alias l='ls -CF'
	alias ll='ls -alFh'
	alias la='ls -A'
	alias lr='ls -R'
elif [ "${SYS}" == "Linux" ]; then
	alias ls='ls --color=auto --group-directories-first'
	alias ll='ls -alFh --color=auto --group-directories-first'
	alias l='ls -alFh --color=auto --group-directories-first'
	alias lt='ls -altrFh --color=auto --group-directories-first'
	alias lr='ls -R'
	alias la='ls -A --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

alias v="vim"

# - Change directory
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../.."

# - .bashrc reload
alias shreload='source ~/.bashrc'

# - sync-dotfiles
alias dotpull="cd ~/lib/sys-config/sync-dotfiles; git pull; cd -"
alias dotstatus="cd ~/lib/sys-config/sync-dotfiles; git status; cd -"

# - Tmux
alias tmux="tmux -2"
alias att="tmux -2 a -t"
alias tls="tmux ls"
alias tns='tmux new-session -s'

# - Switch to python 2.7 with conda
alias workon="source activate"
alias py27="source activate py27"

# - Get path
alias getp="readlink -f"

# - git
alias gs="git status"
alias ga="git add"
alias gp="git push"
alias gg="git pull"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"
alias gcm="git commit -m"
alias gca="git commit --amend"
