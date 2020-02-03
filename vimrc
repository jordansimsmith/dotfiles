" load plugins with vim-plug
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc.nvim recommended configuration
source ~/.vim/coc.vim
