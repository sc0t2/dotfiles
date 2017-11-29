set encoding=utf-8

syntax on

set hidden
set wildmenu
set showcmd
set incsearch
set hlsearch

"underline the line that the cursor is on
set cursorline

"ignore case when searching
set ignorecase
set smartcase

"highlight matching parens, brackets, etc
set showmatch

"line numbering
set number

"make backspace more Vim-like and less Vi-like
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap

set autoindent

"show cursor row and column in bottom right corner of window
set ruler

"make command window 2 rows tall
set laststatus=2
set cmdheight=2

"make text colors play nice with dark background
set background=dark

"filetype-specific configs...some are redundant
augroup configgroup
	autocmd!
	autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
		\:call <SID>StripTrailingWhiteSpaces()
	autocmd FileType python setlocal commentstring=#\ %s
	autocmd FileType python setlocal tabstop=4
	autocmd FileType python setlocal expandtab
	autocmd FileType python setlocal shiftwidth=4
	autocmd FileType python setlocal softtabstop=4
	autocmd BufEnter Makefile setlocal noexpandtab
	autocmd BufEnter *.sh setlocal tabstop=2
	autocmd BufEnter *.sh setlocal shiftwidth=2
	autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

"toggle relative and absolute line numbering
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunc

"call NumberToggle() with CTRL+n
nnoremap <C-n> :call NumberToggle()<cr>

"set line numbering to absolute when in INSERT mode
autocmd InsertEnter * :set nornu
autocmd InsertEnter * :set nu
autocmd InsertLeave * :set nu!
autocmd InsertLeave * :set rnu
