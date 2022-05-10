#!/usr/bin/env bash

#weather=$(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)

#weatherreport="${~/.local/share}/weatherreport"
#getforecast() { curl -sf "wttr.in/Caerphilly" > ~/.local/share/weatherreport || exit 1 ;}

case $BLOCK_BUTTON in
	#3) setsid -f "$TERMINAL" -e less -Srf 'curl wttr.in/Caerphilly?format' ;;
	#3) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	1) setsid -f lxterminal -e 'curl wttr.in/Caerphilly?format  && read' ;;
	#3) setsid -f "$TERMINAL" -e less -Srf 'curl wttr.in/Caerphilly?format' ;;
	#3) notify-send "Weather" "$(curl wttr.in/Caerphilly?format=3)" ;;
	3) notify-send "Weather" "$(curl wttr.in/Caerphilly?format=3)" ;;
	#6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac




icon="歹 "

#if [[ $weather == *location* ]]; then
#  echo $icon" <Unavailable>"
#else
#  echo $icon" "$weather
#fi
#echo $icon" "$weather

weath=$(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)
#echo $weath

if [[ $weath == *location* || $weath == *running* ]]; then
  echo "<Unavailable>"
  
else
  echo $icon" "$weath
fi
