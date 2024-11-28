" plugins.vim: Plugin Configuration
call plug#begin('~/.vim/plugged')

" Essential Plugins
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vimwiki/vimwiki'
call plug#end()

source ~/.config/vim/fzf.vim
source ~/.config/vim/coc.vim
source ~/.config/vim/nerdtree.vim
source ~/.config/vim/vimwiki.vim

