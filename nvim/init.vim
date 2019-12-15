set timeoutlen=1000 ttimeoutlen=0
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" plugin stuff
" https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/
"call plug#begin()
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()
