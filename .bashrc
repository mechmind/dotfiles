
# Check for an interactive session
[ -z "$PS1" ] && return

# dont save duplicates in history, dont save cmds, starting with space
export HISTCONTROL=ignorespace:ignoredups
export HISTIGNORE=fg

test -r ~/.bashrc_local && source ~/.bashrc_local

alias ls='ls --color=auto'

PS1='[\u@\[\e[0;'$PS1_hostcolor'm\]\h\[\e[0m\] \w]\$ '
export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007\a" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
export EDITOR=vim

test -r ~/.bash_functions && source ~/.bash_functions

