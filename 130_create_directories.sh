#!/bin/bash


############ Make sh executable #######################  padsp mocp ####### (if needed) ######################
cd leftwm
chmod +x *.toml
cd themes
cd greyblocks
chmod +x up down change_to_tag
cd scripts
chmod +x *.sh
cd ..
cd polybar
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..
cd ..



cd leftwm
chmod +x *.toml
cd themes
cd eden
chmod +x up down change_to_tag
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..


cd leftwm
chmod +x *.toml
cd themes
cd db
chmod +x up down change_to_tag
cd scripts
chmod +x *.sh
cd ..
cd polybar
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..
cd ..

cd leftwm
chmod +x *.toml
cd themes
cd mydb
chmod +x up down change_to_tag
cd scripts
chmod +x *.sh
cd ..
cd polybar
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..
cd ..
cd ..

cd rofi
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

cd bspwm
chmod +x bspwmrc
chmod +x testwallpaper
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd openbox
chmod +x autostart
cd ..

cd tint2
chmod +x tint2rc
chmod +x tint2-sessionfile
cd ..

#cd qtile
#chmod +x *.sh
#cd ..

#######################################################

if [ ! -d $HOME"/.config" ] 
then mkdir -p $HOME"/.config"
fi

cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

if [ ! -d $HOME"/.config/polybar" ] 
then
mkdir -p $HOME"/.config/polybar"
fi

mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p $HOME"/.config/lxterminal"
#mkdir -p $HOME"/.config/qtile"

if [ ! -d $HOME"/.config/bspwm" ]
then
mkdir -p $HOME"/.config/bspwm"
fi

if [ ! -d $HOME"/.config/termite" ]
then
mkdir -p $HOME"/.config/termite"
fi

if [ ! -d $HOME"/.config/rofi" ] 
then
mkdir -p $HOME"/.config/rofi"
fi

if [ ! -d $HOME"/.config/jgmenu" ]
then
mkdir -p $HOME"/.config/jgmenu"
fi

if [ ! -d $HOME"/.config/openbox" ]
then
mkdir -p $HOME"/.config/openbox"
fi

if [ ! -d $HOME"/.config/obmenu-generator" ]
then
mkdir -p $HOME"/.config/obmenu-generator"
fi

if [ ! -d $HOME"/.config/tint2" ]
then
mkdir -p $HOME"/.config/tint2"
fi

mkdir -p $HOME"/.config/leftwm"

mkdir -p ~/.config/conky
cd conky
cp -r * ~/.config/conky
cd ..

mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf


####Install Spectrtwm####################

cd spectrwm
cd scripts
chmod +x *.sh
cd ..
cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..


mkdir -p ~/.config/spectrwm
cp spectrwm.conf ~/.spectrwm.conf

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

cd leftwm
cp -r * ~/.config/leftwm
cd ..

#cd qtile
#cp -r * ~/.config/qtile
#cd ..


cd lxterminal
cp -r * ~/.config/lxterminal
cd ..


cd polybar
cp -r * ~/.config/polybar
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

#cd dwm
#cp -r * ~/.dwm
#cd ..

#cd termite
#cp -r * ~/.config/termite
#cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd openbox
cp -r * ~/.config/openbox
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

mv ~/.bashrc ~/.bashrc-$(date +%Y.%m.%d-%H.%M.%S)
cp bashrc ~/.bashrc

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
mkdir -p ~/Pictures/wallpapers
cp wall.png ~/Pictures/wallpapers/wall.png

#### Install i3 ##########################
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks

cd i3
chmod +x testwallpaper
chmod +x *.sh
cd ..

cd i3New
cd bin
chmod +x *.sh
cd ..

cd polybar
chmod +x *.sh
cd ..
cd ..

cd i3blocks
chmod +x *.sh
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..


######## Install xmonad ##########################
#mkdir -p ~/.xmonad
#mkdir -p ~/.config/xmobar

#cd xmonad
#chmod +x autostart.sh
####chmod +x testwallpaper
#chmod +x xmonad.hs
#cd ..

#cd xmobar
#chmod +x xmobarrc
#chmod +x *.sh

#cd ..

#cd xmonad
#cp -r * ~/.xmonad
#cd ..

#cd xmobar
#cp -r * ~/.config/xmobar
#cd ..

######## Install DWM ##############################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/Luke

cd Luke
cd statusbar
chmod +x *.sh
chmod +x sb-volume
chmod +x sb-clock
cd ..
cd ..

cd Luke
cp -r * ~/Luke
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
cp autostart.sh ~/.local/share/dwm

##############################Install bumblebee for i3########################
cd ~/.config/i3/bumblebee-status
makepkg -sicr

cd ~/Luke/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/Luke/dwmblocks
sudo make clean install

cd ~/Luke/st-transparency-scrollback
sudo make clean install

#########################Install bumblebee-status files - mine
cd ~/bspwm-arco/i3/bumblebee-status/myfiles
sudo cp -r * /usr/share/bumblebee-status/bumblebee_status/modules/contrib
#xmonad --recompile

cd ~/.config/leftwm/themes
ln -s eden current


#sudo systemctl enable bluetooth




