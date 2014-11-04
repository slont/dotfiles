###########
# history #
###########

HISTFILE=$HOME/.zsh-history
## メモリに展開する履歴の数
HISTSIZE=100000
## 保存する履歴の数
SAVEHIST=100000
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## 余分な空白は詰めて記録
setopt hist_reduce_blanks
## 古いコマンドと同じものは無視
setopt hist_save_no_dups
## ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
## 補完時にヒストリを自動的に展開
setopt hist_expand

## Screenでのコマンド共有用
## シェルを横断して.zshhistoryに記録
setopt inc_append_history
## ヒストリを共有
setopt share_history
#The following lines were added by compinstall


zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
STFILE=$HOME/.zsh-history
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/maki/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
setopt appendhistory extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install

autoload colors
colors

## RPROMPT="%B%{${fg[red]}%}[%d]"

PROMPT="%B%{${fg[cyan]}%}(%n@%m) %B%{${fg[red]}%}%d
%B%{${fg[cyan]}%}%# %{${reset_color}%}%b"

alias ls='ls -G'
alias open='cygstart'

# --------------------------------------
# Google search from terminal
# --------------------------------------
ggr(){
    cygstart "https://www.google.co.jp/search?q=${*// /+}"
}

# --------------------------------------
# Google Calendar
# --------------------------------------
gcal(){
    cygstart "https://www.google.com/calendar"
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

