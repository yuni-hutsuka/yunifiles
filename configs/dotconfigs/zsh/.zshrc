# .zshrc

# aliases
alias g="git"
alias cat="bat"
alias ls="exa --icons --classify --long --sort=type --git"
alias la="exa --icons --classify --long --sort=type --git --all"
alias tree="exa --icons --classify --long --sort=type --git --all --tree --level=3"
alias rm="trash"

# autocd
setopt AUTO_CD
cdpath=(.. ~ ~/src)

# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY
