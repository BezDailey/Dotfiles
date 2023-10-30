:lua << EOF
require("mason").setup()
require("mason-lspconfig.nvim").setup()
EOF
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <Space>n :NERDTreeToggle<CR>
nnoremap <Space>f :Format<CR>

set number
set relativenumber
let g:vimwiki_list = [{'path': '~/Repositories/MyWiki/',
			\ 'syntax': 'markdown', 'ext':'.md'}]
call plug#begin(stdpath('data') . '/plugged')
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-lint'
Plug 'mhartington/formatter.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'vimwiki/vimwiki'
call plug#end()
