# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors ~/.mydircolors`"
fi

export PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin/shell-scripts:$HOME/Tools
