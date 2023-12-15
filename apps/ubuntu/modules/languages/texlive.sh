#!/bin/sh

YEAR="2023"

cd ~
echo "Install: TexLive$YEAR"
echo "    >> Download iso image"
wget -c http://mirror.ctan.org/systems/texlive/Images/texlive$YEAR.iso
echo "    >> Mount on /mnt/tex"
sudo mkdir /mnt/tex
sudo mount -o loop texlive$YEAR.iso /mnt/tex
cd /mnt/tex
echo "    >> Install"
sudo ./install-tl
echo "    >> Un mount"
sudo umount /mnt/tex
sudo rm -rf /mnt/tex
echo "    >> Finished"
