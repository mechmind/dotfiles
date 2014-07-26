#!/bin/bash

test -e ~/.config/wm-prestart.sh && . ~/.config/wm-prestart.sh
exec i3
