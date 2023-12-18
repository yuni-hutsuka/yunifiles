#!/bin/sh

YEAR="2023"

wget -c http://mirror.ctan.org/systems/texlive/Images/texlive$YEAR.iso
sudo mkdir /mnt/tex
sudo mount -o loop texlive$YEAR.iso /mnt/tex
cd /mnt/tex
sudo ./install-tl
cd ~
sudo umount /mnt/tex
sudo rm -rf /mnt/tex
