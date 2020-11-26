# PATH
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$PATH

# oh-my-zsh config
export ZSH="/Users/scottmyers/.oh-my-zsh"
ZSH_THEME="wedisagree"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# go
export GOBIN=$HOME/go/bin
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

# preferred editor
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# aliases
alias vim="nvim"
alias ansible-env="source ~/venv/ansible/bin/activate"
. "/Users/scottmyers/.acme.sh/acme.sh.env"

# functions
sshagent() {
    eval $(ssh-agent)
    ssh-add
}

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
