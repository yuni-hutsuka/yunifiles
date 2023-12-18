# .zshenv

# 様々環境変数PATH
# cargo
. "$HOME/.cargo/env"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# deno
export DENO_INSTALL="/home/yunih/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# starship
eval "$(starship init zsh)"

# latex
export PATH="/usr/local/texlive/2023/bin/x86_64-linux/:$PATH"
