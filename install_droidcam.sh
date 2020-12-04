#!/bin/bash

echo "--------Desinstalando Droidcam--------"
/opt/droidcam-uninstall
echo "--------Desinstalação Concluída--------"

echo "--------Instalando Droidcam--------"
cd /tmp/
wget https://files.dev47apps.net/linux/droidcam_latest.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && ./install-client
apt install linux-headers-`uname -r` gcc make
./install-video
apt-get install adb
echo "--------Instalação Concluída--------"