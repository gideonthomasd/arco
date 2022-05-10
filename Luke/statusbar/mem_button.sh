#!/bin/env bash

#case $BLOCK_BUTTON in
	#1) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	#1) setsid -f "$TERMINAL" -e htop ;;
	#3) notify-send "🧠 Memory module" "\- Shows Memory Used/Total.
#- Click to show memory hogs.
#- Middle click to open htop." ;;
	#6) "$TERMINAL" -e "$EDITOR" "$0" ;;
#esac

case $BLOCK_BUTTON in
	#1) notify "$(acpi -b | awk -F ': |, ' '{printf "%s\n%s\n", $2, $4}')" ;;
	1) "$TERMINAL" -e htop ;;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
