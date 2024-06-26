tce-load -wi nano vim kmaps automake
sudo loadkmap < /usr/share/kmap/qwerty/br-abnt2.kmap

wget ftp://ftp.figlet.org/pub/figlet/program/unix/figlet-2.2.5.tar.gz
tar zxf figlet-2.2.5.tar.gz
cd figlet-2.2.5
make
sudo make install

cd
echo "alias clear='clear && echo -e \"\e[31m$(figlet TUX-THUNDER)\e[0m\"'" >> /home/tc/.ashrc
clear