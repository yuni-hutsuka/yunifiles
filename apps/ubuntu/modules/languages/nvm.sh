#!/bin/sh

cd ~
echo "Install: Node.js"
echo "    >> Install NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | sh >> .nvm-install-log
echo "    >> Reload rc"
source ~/.config/zsh/.zshrc >> .nvm-install-log
echo "    >> Install Node.js - Latest"
nvm install node >> .nvm-install-log
echo "    >> Install npm - Latest"
npm install -g npm >> .nvm-install-log
echo "    >> Finished"
