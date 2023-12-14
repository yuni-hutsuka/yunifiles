#!/bin/sh

cd ~
echo "Install: Rust"
echo "    >> Install build prerequisites."
sudo apt install -y curl
echo "    >> install"
curl --proto '=https' --tlsv1.2 -sSf https://sh/rustup.rs | sh
echo "    >> finished"
