alias ls='ls --color=auto'
alias l.='ls -Ad .*'
alias ll='ls -al'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias vi='/usr/local/bin/vim'
alias c='clear'
alias df='df -h'
alias du='du -h'
alias vim='nvim'

# do not delete / or prompt if deleting >3 files at a time
alias rm='rm -I --preserve-root'

# prevent dangerous / perm modifications
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# colorize grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

