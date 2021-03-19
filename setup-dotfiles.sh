#!/usr/bin/env bash

# symlink dotfile at $1 to destination at $2
function dotfile {
	SRC=$1
	DEST=$2
	ln -fs $(readlink -f $SRC) $DEST
}

# make nvim config directory if it doesn't exist
if [ ! -d "~/.config/nvim" ]; then
	mkdir -p ~/.config/nvim
fi

# symlink dotfiles
dotfile ./bash/.bash_aliases ~/.bash_aliases
dotfile ./nvim/init.vim ~/.config/nvim/init.vim
dotfile ./tmux/.tmux.conf ~/.tmux.conf
dotfile ./vim/.vimrc ~/.vimrc
dotfile ./zsh/.zshrc ~/.zshrc
