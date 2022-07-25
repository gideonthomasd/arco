#!/bin/bash

killall -q polybar

#polybar example -c ~/.config/awesome/polybar/config.ini 2>%1 | tee -a /tmp/polybar.log & disown



polybar example -c ~/.config/awesome/polybar/config.ini &
