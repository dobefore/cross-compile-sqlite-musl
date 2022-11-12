# compile sqlite

wget --no-check-certificate https://www.sqlite.org/2022/sqlite-autoconf-3390000.tar.gz
tar -zxvf sqlite-autoconf-3390000.tar.gz -C .

mkdir -p $HOME/sql
cd sqlite-autoconf-3390000
./configure CC=$HOME/rpitools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc  --host=arm-linux --prefix=$HOME/sql
make && make install