
# Check for an interactive session
[ -z "$PS1" ] && return

source ~/.bashrc_local

alias ls='ls --color=auto'

PS1='[\u@\[\e[0;'$PS1_hostcolor'm\]\h\[\e[0m\] \w]\$ '

complete -cf sudo

source ~/.bash_functions
