cds () { mkdir -p "$1" && cd "$1"; }
test -r ~/.bash_functions_local && source ~/.bash_functions_local

alias sudo="sudo -E"

alias ssh="TERM=${TERM%-256color} ssh"

wlog () { echo $(date '+[%F %T]') "$@" >> ~/.wlog; }
lastwlog() {
    weeks=$1;
    if [ -z "$1" ]; then
        weeks=2;
    fi
    awk -v STARTDATE="$(date '+[%F' --date="-$weeks weeks")" '$1 >= STARTDATE' ~/.wlog;
}

iflog() {
    (data; ip a s dev eno1) >> ~/.iflog
}
