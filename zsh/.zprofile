# Get aliases and functions
if [ -f ~/.zshrc ]; then
	. ~/.zshrc
fi

# User specific environment and startup programs
#
# Normally the path should be set in ~/.zshenv, but Arch sources
# /etc/profile after sourcing ~/.zshenv
# set path here to prevent it being overwritten
typeset -U path
path=(~/bin ~/tools $path[@])
