# colorized ls
alias ls='ls -G'
alias l.='ls -Ad .*'
alias ll='ls -al'
alias dir='ls --format=vertical'
alias vdir='ls --format=long'
alias vi='/usr/local/bin/vim'
alias c='clear'
alias df='df -h'
alias du='du -h'

# do not delete / or prompt if deleting >3 files at a time
alias rm='rm -I --preserve-root'

# colorize grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# get public IP address
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

