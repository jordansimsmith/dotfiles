" load plugins with vim-plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" coc.nvim recommended configuration
source ~/.vim/coc.vim

" let coc.nvim handle go to definition
let g:go_def_mapping_enabled = 0
