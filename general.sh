#!/bin/sh

tce-load -wi nano vim kmaps compiletc
sudo loadkmap < /usr/share/kmap/qwerty/br-abnt2.kmap

wget ftp://ftp.figlet.org/pub/figlet/program/unix/figlet-2.2.5.tar.gz
tar zxf figlet-2.2.5.tar.gz
cd figlet-2.2.5
make
sudo make install

cd
echo "alias clear='clear && echo -e \"\e[31m$(figlet TUX-THUNDER)\e[0m\"'" >> /home/tc/.ashrc
. /home/tc/.ashrc
clear

show_menu() {
    echo "Installation Menu"
    echo "1. Brute Force"
    echo "2. ..."
    echo "3. ..."
    echo "4. ..."
    echo "5. ..."
    echo "6. ..."
    echo "7. ..."
    echo "8. ..."
    echo "9. ..."
    echo "10. ..."
    echo "11. ..."
    echo "12. ..."
    echo "13. ..."
    echo "14. ..."
    echo "15. ..."
    echo "16. ..."
    echo "0. Exit"
}

install_tool() {
    case $1 in
        1)
            curl -L -O https://raw.githubusercontent.com/adriel007/tux-thunder/main/brute_force.sh
            chmod +x brute_force.sh
            ./brute_force.sh
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
}

while true; do
    show_menu
    read -p "Choose an option: " choice
    install_tool $choice
    read -p "Press Enter to continue..."
done