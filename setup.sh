#!/bin/bash


# install wine - https://wiki.winehq.org/Ubuntu
# install winetricks - https://wiki.winehq.org/Winetricks

sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 

sudo apt update

sudo apt install --install-recommends winehq-stable




cd "${HOME}/Downloads"
wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks

sh winetricks corefonts
