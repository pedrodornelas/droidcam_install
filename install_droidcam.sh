#!/bin/bash

echo -e "--------Desinstalando Droidcam--------\n"
sudo /opt/droidcam-uninstall
echo -e "--------Desinstalação Concluída--------\n"

echo -e "--------Instalando Droidcam--------\n"

cp droidcam.desktop /usr/share/applications/
cp droidcam.png /usr/share/icons/

cd /tmp/
wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_1.7.2.zip
# sha1sum: c687253a17ca6a2337b85ed90de585c776174250
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client
sudo apt install linux-headers-`uname -r` gcc make
sudo ./install-video
sudo apt-get install adb

echo -e "--------Instalação Concluída--------\n"