#!/bin/bash

echo "--------Desinstalando Droidcam--------\n"
/opt/droidcam-uninstall
echo "--------Desinstalação Concluída--------\n"

echo "--------Instalando Droidcam--------\n"

cd /tmp/
wget https://files.dev47apps.net/linux/droidcam_latest.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && ./install-client
apt install linux-headers-`uname -r` gcc make
./install-video
apt-get install adb

#Criando atalho no menu de aplicativos
cp droidcam.desktop ~/.local/share/applications/droidcam.desktop
cp droidcam.png ~/.local/share/icons/droidcam.png

echo "--------Instalação Concluída--------\n"