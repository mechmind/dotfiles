cds () { mkdir -p "$1" && cd "$1"; }
source ~/.bash_functions_local

finit() { count=$#; current=1; for i in "$@" ; do echo $current $count; echo $i; current=$((current + 1)); done; }
alias fnext='read cur total && echo -n "[$cur/$total] " && read'
alias watchfor='while read x;do for((i=0;i<${#x};i++));do echo -n "${x:$i:1}";sleep .02;done;sleep .24;echo;done'
alias sudo="sudo -E"
alias ru='LOCALE=ru_RU.utf8 LC_ALL=ru_RU.utf8 '
