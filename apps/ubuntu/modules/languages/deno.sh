#!/bin/sh

cd ~
echo "Install: Deno"
echo "    >> Install build prerequisites."
sudo apt install -y curl >> .deno-install-log
echo "    >> Install"
curl -fsSL https://deno.land/x/install/install.sh | sh >> .deno-install-log
echo "    >> Finished"
