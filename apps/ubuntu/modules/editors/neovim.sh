#!/bin/sh

cd ~
echo "Install: Neovim"
echo "    >> Install build prerequisites."
sudo apt install -y ninja-build gettext cmake unzip curl
echo "    >> Clone source."
git clone https://github.com/neovim/neovim
echo "    >> cd to neovim"
cd neovim
echo "    >> set CMAKE_BUILD_TYPE"
make CMAKE_BUILD_TYPE=RelWithDebInfo
echo "    >> install"
sudo make install
echo "    >> finished"
cd ~
