#!/bin/sh

echo "Install: Visual Studio Code"
echo "    >> Install reqirements"
sudo apt-get install wget gpg
echo "    >> Download key"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
echo "    >> "
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "    >> "
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' >> .log-vscode
echo "    >> "
rm -f packages.microsoft.gpg
echo "    >> Install code"
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
echo "    >> Finished"
