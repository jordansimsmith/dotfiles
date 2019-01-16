" Remove VI compatability
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Enable recursive search
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Pick a leader key
let mapleader = ","

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

" Golang support/ vim-go
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

let g:go_fmt_command = "goimports"
