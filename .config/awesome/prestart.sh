#!/bin/bash

# Set up X

xset r rate 250		## repeat rate
xset b off		## dont bell on bell
xset m 1.9		## mouse accleration


# Set up keyboard

setxkbmap -option "grp:caps_toggle" us,ru	## switch layouts by caps lock
kbdd			## daemon for per-window layouts
xbindkeys		## daemon for key rebinding (TODO: can be rewritten by awesome keybindings or xmodmap/setxkbmap) 

# Set up Xresources
xrdb -merge ~/.Xresources

# Set up dual mon's
if xrandr | grep -q DVI-0 ; then
    xrandr --output DVI-0 --right-of VGA-0
fi

# Set up agents
eval $(keychain --eval)

