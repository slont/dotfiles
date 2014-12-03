source ~/.zsh.d/zshrc


# --------------------------------------
# alias
# --------------------------------------

alias cp='cp -rp'
alias ls='ls -a'
alias open='cygstart'
alias rm='rm -rf'



# --------------------------------------
# function
# --------------------------------------

## Google search from terminal
ggr(){
    cygstart "https://www.google.co.jp/search?q="$1
}

## Google Calendar
gcal(){
    cygstart "https://www.google.com/calendar"
}

## Gmail
gmail(){
    cygstart "https://mail.google.com/mail"
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
