#!/bin/sh

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

echo "run make install"
