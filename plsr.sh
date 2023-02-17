#!/bin/sh

WALLET=PFiw1McLfMKeqRMdhHG7ne6cEw2Z13ABgY

POOL=stratum+tcps://stratum-asia.rplant.xyz:17063

sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.1.0/SRBMiner-Multi-2-1-0-Linux.tar.xz
tar -xf SRBMiner-Multi-2-1-0-Linux.tar.xz
cd SRBMiner-Multi-2-1-0
chmod +x SRBMiner-MULTI
screen -S Wuenuak_Guerrr -dm ./SRBMiner-MULTI --disable-gpu --algorithm minotaurx --pool $POOL --wallet $WALLET --password x --cpu-threads 15 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 15
screen -ls
sleep 2
clear
cd ..
screen -ls
./timer.sh
