# PATH
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$PATH

# oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# go
#export GOBIN=$HOME/go/bin
#export GOPATH=$HOME/go
export GOROOT=/usr/local/go

# preferred editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# aliases
alias vim="nvim"

# functions
sshagent() {
    eval $(ssh-agent)
    ssh-add
}

