
# Check for an interactive session
[ -z "$PS1" ] && return

# dont save duplicates in history, dont save cmds, starting with space
export HISTCONTROL=ignorespace:ignoredups

test -r ~/.bashrc_local && source ~/.bashrc_local

alias ls='ls --color=auto'

PS1='[\u@\[\e[0;'$PS1_hostcolor'm\]\h\[\e[0m\] \w]\$ '
export EDITOR=vim

test -r ~/.bash_functions && source ~/.bash_functions

