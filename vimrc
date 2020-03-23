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

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'herringtondarkholme/yats.vim'
Plug 'cespare/vim-toml'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" coc.nvim recommended configuration
source ~/.vim/coc.vim

" coc extensions
let g:coc_global_extensions=[
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-tslint-plugin',
  \ 'coc-yaml',
  \ 'coc-python',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-texlab',
  \ 'coc-rust-analyzer',
  \ ]

highlight CocFloating ctermbg=Black

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" let coc.nvim handle go to definition
let g:go_def_mapping_enabled=0

let g:go_fmt_command='goimports'

" nerdtree
let g:NERDTreeIgnore=['^node_modules$']
nmap <C-n> :NERDTreeToggle<CR>

" nerdcommenter
let g:NERDSpaceDelims=1
nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle

" ctrlp ignores gitignored files
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" airline
let g:airline_powerline_fonts=1

" auto resize buffers if window resizes
autocmd VimResized * wincmd =

" don't assume comment after new line
autocmd BufRead,BufNewFile * setlocal formatoptions-=ro
