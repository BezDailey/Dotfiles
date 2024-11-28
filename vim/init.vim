" init.vim: Main Vim Configuration

" General Settings
set number
set relativenumber
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set wrap
set clipboard=unnamed
set background=dark
let mapleader=" "
set noswapfile
set noshowmode
set nocompatible
filetype plugin on
syntax on

" Search Settings
set ignorecase
set smartcase
set incsearch
set hlsearch

" Source additional configuration files
source ~/.config/vim/plugins.vim
source ~/.config/vim/mappings.vim
