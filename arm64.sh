# compile sqlite

wget --no-check-certificate https://www.sqlite.org/2022/sqlite-autoconf-3390400.tar.gz
tar -zxvf sqlite-autoconf-3390400.tar.gz -C .

mkdir -p $HOME/sql
cd sqlite-autoconf-3390400
export PATH="$HOME/aarch64-linux-musl-cross/bin:$PATH"
./configure CC=aarch64-linux-musl-gcc  --host=aarch64 --prefix=$HOME/sql
make && make install
