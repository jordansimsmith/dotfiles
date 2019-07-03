" Remove VI compatability
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plugins to load correctly
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Enable recursive search
set path+=**
set wildignore+=**/node_modules/**

" Display all matching files when we tab complete
set wildmenu

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show cursor position
set ruler

" Show the filename in the window titlebar
set title

" Show the partial command as it's being typed
set showcmd

" Blink cursor on error instead of beeping
set visualbell

" Encoding
set encoding=utf-8

" Tab size
set tabstop=2
set shiftwidth=2
set expandtab

" Line width
set textwidth=79

" Dont assume comment after new line
set formatoptions-=ro

" Mouse scroll
set mouse=a

" Vim-plug plugins
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'lervag/vimtex'
Plug 'tell-k/vim-autopep8'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

let g:go_fmt_command = "goimports"
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1
let g:ale_lint_on_enter = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.md,*.yaml,*.html Prettier

" Auto resize buffers if window resizes
autocmd VimResized * wincmd =

" Turn on spell checking for latex documents
autocmd BufRead,BufNewFile *.tex setlocal spell
