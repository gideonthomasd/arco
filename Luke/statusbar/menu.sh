#!/bin/env bash

case $BLOCK_BUTTON in
	#3) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	#1) setsid -f lxterminal -e htop ;;
	#2) notify-send "🧠 Memory module" "\- Shows Memory Used/Total.
#- Click to show memory hogs.
#- Middle click to open htop." ;;
	#6) "$TERMINAL" -e "$EDITOR" "$0" ;;
	
	1) ~/.config/rofi/launchers/colorful/launcher.sh ;;
	3) jgmenu_run ;;
	
esac


echo ' '

