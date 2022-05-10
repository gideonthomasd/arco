#!/bin/env bash

case $BLOCK_BUTTON in
	#3) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	3) pamac-manager ;;
	1) setsid -f lxterminal -e 'sudo pacman -Syu' ;;
#) notify-send "🧠 Memory module" "\- Shows Memory Used/Total.
#- Click to show memory hogs.
#- Middle click to open htop." ;;
	#6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

upd=$(checkupdates | wc -l)

echo " "$upd
#echo "%{T1} %{T-} %{T1} $MEMUSED/$MEMTOT %{T-}"
#"%{T3}%{T-} %{T2}$count%{T-}"
