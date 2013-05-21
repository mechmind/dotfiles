#!/bin/bash

case "$1" in
	awesome)
		test -e ~/.config/awesome/prestart.sh && /bin/bash ~/.config/awesome/prestart.sh
		exec awesome
		;;
esac
