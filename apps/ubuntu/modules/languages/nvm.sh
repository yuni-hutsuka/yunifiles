#!/bin/sh

cd ~
echo "Install: Node.js"
echo "    >> Install NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo "    >> Reload rc"
source ~/.config/zsh/.zshrc
echo "    >> Install Node.js - Latest"
nvm install node
echo "    >> Install npm - Latest"
npm install -g npm
echo "    >> finished"
