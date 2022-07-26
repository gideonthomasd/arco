#!/bin/bash

sudo pacman -S awesome
yay -S picom-jonaburg-git
yay -S volctl
cd awesome
chmod +x *.sh
cd polybar
chmod +x *.sh
cd ..
cd ..
mkdir -p ~/.config/awesome
cd awesome
cp -r * ~/.config/awesome
cd ..
