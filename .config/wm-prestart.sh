#!/bin/bash

# Set up X

xset r rate 250		## repeat rate
xset b off		## dont bell on bell
xset m 1.9		## mouse accleration


# Set up keyboard

setxkbmap -option "grp:caps_toggle" us,ru	## switch layouts by caps lock
kbdd			## daemon for per-window layouts
xbindkeys		## daemon for key rebinding

# Set up Xresources
xrdb -merge ~/.Xresources

# Set up dual mon's
if [ `xrandr | awk '$2 == "connected"' | wc -l` -gt 2 ] && xrandr | grep -q DP1-1 ; then
    xrandr --output DP1-1 --auto
    xrandr --output DP1-2 --auto --right-of DP1-1
fi

# Set up wallpaper
if test -f ~/tmp/wallpaper.jpg ; then
    feh --no-fehbg --bg-scale ~/tmp/wallpaper.jpg
else
    feh --no-fehbg --bg-scale ~/.config/wallpaper.jpg
fi

# Set up agents
eval $(keychain --eval)

