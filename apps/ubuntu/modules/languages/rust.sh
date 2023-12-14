#!/bin/sh

cd ~
echo "Install: Rust"
echo "    >> Install build prerequisites."
sudo apt install -y curl >> .rust-install-log
echo "    >> Install"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh >> .rust-install-log
echo "    >> Finished"
