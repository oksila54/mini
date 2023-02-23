#!/bin/sh

WALLET=MWyhsXGGKoUrQ3E7GRn7CZV4UvHX34ePrt

POOL=stratum+tcp://minotaurx.sea.mine.zpool.ca:7019

sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.1.0/SRBMiner-Multi-2-1-0-Linux.tar.xz
tar -xf SRBMiner-Multi-2-1-0-Linux.tar.xz
cd SRBMiner-Multi-2-1-0
chmod +x SRBMiner-MULTI
screen -S Wuenuak_Guerrr -dm ./SRBMiner-MULTI --disable-gpu --algorithm minotaurx --pool $POOL --wallet $WALLET --password c=LTC --cpu-threads 14 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 14
screen -ls
sleep 2
clear
cd ..
screen -ls
./timer.sh
