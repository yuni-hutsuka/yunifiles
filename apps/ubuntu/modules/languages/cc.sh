#!/bin/sh

echo "Install: C"
echo "    >> Install gcc & clang"
sudo apt install -y gcc clang >> .cc-install-log
echo "    >> Finished"
