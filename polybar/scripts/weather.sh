#!/bin/bash

#curl wttr.in/Caerphilly?format="%l+%C+%f" > /home/phil/.config/polybar/scripts/weatherinfo

##echo $(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2- )


weath=$(curl wttr.in/Caerphilly?format="%l+%C+%f" 2>/dev/null | cut -d' ' -f2-)
#echo $weath

if [[ $weath == *location* || $weath == *running* ]]; then
  echo "<Unavailable>"
  
else
  echo $weath
fi

