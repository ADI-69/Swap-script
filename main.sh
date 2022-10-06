#!/bin/bash

set -e
SCRIPT_VERSION="V1"

clear
echo
#print_brake 70
echo "* Swap File Creation Script @ $SCRIPT_VERSION"
echo
echo "* Project by A D I."
#print_brake 70
echo
echo "1. 2 GB SWAP"
echo "2. 4 GB SWAP"
echo "3. 8 GB SWAP"
echo "4. 16 GB SWAP"
echo "5. 32 GB SWAP"
echo "6. 64 GB SWAP"
echo "7. 128 GB SWAP"
echo "8. 256 GB SWAP"
echo "9. Close / Cancel"
read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    sudo fallocate -l 2G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "2" ]
    then
    sudo fallocate -l 4G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "3" ]
    then
    sudo fallocate -l 8G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "4" ]
    then
    sudo fallocate -l 16G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "5" ]
    then
    sudo fallocate -l 32G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "6" ]
    then
    sudo fallocate -l 64G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "7" ]
    sudo fallocate -l 128G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "8" ]
    then
    sudo fallocate -l 256G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    cat /proc/sys/vm/swappiness
    exit 0
fi
if [ $choice == "9" ]
    then
    echo "Canceling..."
    exit 0
fi
