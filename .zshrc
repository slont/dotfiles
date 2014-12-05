source ~/.zsh.d/zshrc
source ~/.zsh.d/func
source ~/.zsh.d/keybind

# --------------------------------------
# alias
# --------------------------------------

alias cp='cp -rp'
alias ls='ls -a'
alias open='cygstart'
alias rm='rm -rf'


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
