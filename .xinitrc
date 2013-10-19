#!/bin/bash

test -e ~/.config/wm-prestart.sh && /bin/bash ~/.config/wm-prestart.sh
exec $1
