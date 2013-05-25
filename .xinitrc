#!/bin/bash

test -e ~/.config/wm-prestart.sh && /bin/bash ~/.config/wm-prestart.sh
case "$1" in
    awesome)
        exec awesome
        ;;
    i3)
        exec i3
        ;;
esac
