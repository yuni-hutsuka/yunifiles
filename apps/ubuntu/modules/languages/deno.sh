#!/bin/sh

cd ~
echo "Install: Deno"
echo "    >> Install build prerequisites."
sudo apt install -y curl
echo "    >> install"
curl -fsSL https://deno.land/x/install/install.sh | sh
echo "    >> finished"
