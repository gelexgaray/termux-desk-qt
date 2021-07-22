#!/data/data/com.termux/files/usr/bin/bash

FILES_URL="https://github.com/Yisus7u7/termux-desk-qt/releases/download/files-1.0"

cd $HOME

clear 

#this script will configure a moded graphical user interface 
#(lxqt) in termux
#creator: @Yisus7u7v

echo -e """
\e[1;33mTermux-Desk-Qt\e[1m 
   \e[1;31mby \e[4;36mYisus7u7\e[4m \e[1m
"""

echo -e '\e[1;36m installing lxqt and basic apps...\e[1m'
sleep 1
pkg update && pkg upgrade
pkg install -y x11-repo
pkg install -y xcompmgr audacious qt5-qttools qt5-qtx11extras lxqt lxqt-build-tools otter-browser qgit gtk2 gtk3 python-tkinter tigervnc xorg-xhost openbox geany qt5-qtwebsockets qt5-qtxmlpatterns qt5-qtdeclarative tumbler neovim termux-api termux-desk-qt-icon-theme termux-arc-gtk-theme breeze-cursor-theme

echo "configurando el escritorio y las variables de entorno..."
sleep 5
pkg install -y wget git featherpad
curl $FILES_URL/install.sh | bash
cd $HOME
wget $FILES_URL/dots.tar
rm -rf $HOME/.themes $HOME/.icons $HOME/.vnc 
rm -rf $HOME/.config.old
mv $HOME/.config $HOME/.config.old
tar -xvf ./dots.tar
mkdir Descargas Documentos Publico Videos
termux-setup-storage
ln -s $HOME/storage/music $HOME/Musica
rm ./dots.tar




