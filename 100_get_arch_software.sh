#!/bin/bash
#set -e

###############################################################################
# Author	:	Based on Erik Dubois

###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the development packages"
###############################################################################

list=(
ttc-iosevka
plank
#xcompmgr
feh
firefox
geany
pcmanfm
thunar
thunar-volman
thunar-archive-plugin
xarchiver
unzip
lightdm
xdo
base-devel
arandr
lxsession
lxappearance
arc-gtk-theme
git
lightdm-gtk-greeter
lightdm-gtk-greeter-settings
xorg
xorg-server
xorg-xinit
dmenu
rofi
neofetch
xterm
#termite
xfce4-terminal
xed
networkmanager
lxtask
xdg-utils
pavucontrol
pulseaudio
volumeicon
gsimplecal 
gmrun
gtk2-perl
lsb-release
gvfs
ntfs-3g
jgmenu
awesome-terminal-fonts
ttf-font-awesome
sxhkd
mpv
vlc
youtube-dl
pacman-contrib
bspwm
cronie
linux-lts
linux-lts-headers
openbox
obconf
tint2
obmenu-generator
nitrogen
flatpak
lxterminal
gparted
pulsemixer
htop
qtile
i3-gaps
i3blocks
sxiv
xdotool
trayer
htop
moc
#xmonad
#xmonad-contrib
#xmobar
picom
leftwm
xfce4-appfinder
nerd-fonts-source-code-pro
arcolinux-candy-beauty-git
leftwm-theme-git
#sddm
arcolinux-tweak-tool-git
appimagelauncher
blueman
pulseaudio-bluetooth
spectrwm
yt-dlp
ueberzug
parcellite
pamixer
calcurse
system-config-printer
freerdp
remmina
pycharm-community-edition
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
