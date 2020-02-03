" remove vi compatibility
set nocompatible

" for plugins to load correctly
filetype off
filetype plugin indent on

" line numbers
set number relativenumber

" show cursor position
set ruler

" show partial command as it's being typed
set showcmd

" blink cursor instead of beeping
set visualbell

" encoding
set encoding=utf-8

" mouse scroll
set mouse=a

" backspace behaviour
set backspace=indent,eol,start

" tab size
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab

" load plugins with vim-plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" coc.nvim recommended configuration
source ~/.vim/coc.vim

" let coc.nvim handle go to definition
let g:go_def_mapping_enabled=0
let g:go_fmt_command='goimports'

" auto resize buffers if window resizes
autocmd VimResized * wincmd =

" don't assume comment after new line
autocmd BufRead,BufNewFile * setlocal formatoptions-=ro
