cds () { mkdir -p "$1" && cd "$1"; }
cdgo () {
    local pat="$1"
    pathes=$(echo $GOPATH | tr : ' ' | while read p ; do echo "$p/src"; done)
    path=$(find -L $pathes -type d -path "*/$pat" -and -not -path "*/Godeps/*" | head -1)
    test -e "$path" && cd "$path"
}

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
