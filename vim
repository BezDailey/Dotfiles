let g:vimwiki_list = [{'path': '~/Repositories/MyWiki/',
			\ 'syntax': 'markdown', 'ext':'.md'}]
nnoremap <Space>n :NERDTreeToggle<CR>
set number
set relativenumber
call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
call plug#end()
