# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

zstyle :compinstall filename '/home/scott/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

source /home/scott/.profile

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
