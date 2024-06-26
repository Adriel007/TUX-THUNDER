#!/bin/sh

tce-load -wi compiletc git cmake openssl-dev zlib_base-dev ncursesw-dev libssh2-dev libcap-dev libgcrypt-dev autoconf automake perl5 m4

git clone https://github.com/vanhauser-thc/thc-hydra.git
cd /home/tc/thc-hydra
./configure
make
sudo make install

git clone https://github.com/openwall/john.git
cd /home/tc/john/src
./configure
make
echo "alias john='/home/tc/john/run/john'" >> /home/tc/.ashrc

git clone https://github.com/jmk-foofus/medusa.git
cd /home/tc/medusa
./configure
make
sudo make install

git clone https://github.com/hashcat/hashcat.git
cd /home/tc/hashcat
make
sudo make install

cd
clear