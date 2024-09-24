" General Settings
set nocompatible              " Disable compatibility mode
set encoding=utf-8            " Use UTF-8 encoding
set nobackup                  " Disable backup files
set nowritebackup             " Disable backup before overwriting files
set updatetime=300            " Faster updates for better user experience
set signcolumn=yes            " Always show the sign column
set number                    " Show line numbers
set relativenumber            " Relative line numbers
set clipboard+=unnamedplus    " Use system clipboard

" Tab and Indentation Settings
set tabstop=2                 " Set tab size to 2 spaces
set shiftwidth=2              " Set indentation width to 2 spaces
set expandtab                 " Convert tabs to spaces
set autoindent                " Enable automatic indentation

" Searching
set hlsearch                  " Highlight search results


" Vim-plug: Plugin Manager
call plug#begin('~/.vim/plugged')

" Plugin: Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Plugin: VimWiki for personal notes
Plug 'vimwiki/vimwiki'

" Plugin: File tree explorer
Plug 'preservim/nerdtree'

" Plugin: Coc.nvim for LSP and autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Key Mappings
let mapleader = " "           " Set <leader> to space

" Toggle NERDTree
nnoremap <Space>n :NERDTreeToggle<CR>

" Coc.nvim Configuration

" Completion mappings
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Function to check for backspace
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <C-space> coc#refresh()

" Diagnostic navigation
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show documentation with K
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight symbol references
autocmd CursorHold * silent call CocActionAsync('highlight')

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Formatting
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')

" Code actions
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>ac <Plug>(coc-codeaction-cursor)
nmap <leader>as <Plug>(coc-codeaction-source)
nmap <leader>qf <Plug>(coc-fix-current)

" Refactor actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r <Plug>(coc-codeaction-refactor-selected)

" CodeLens actions
nmap <leader>cl <Plug>(coc-codelens-action)

" Text objects for function and class
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Scroll float windows
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Selections and actions
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Commands
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR :call CocActionAsync('runCommand', 'editor.action.organizeImport')

" CocList mappings
nnoremap <silent><nowait> <space>a :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p :<C-u>CocListResume<CR>

" Vimwiki configuration
let g:vimwiki_list = [{'path': '~/Repos/MyWiki/', 'syntax': 'markdown', 'ext':'.md'}]

" Colorscheme (Uncomment and choose your preferred scheme)
colorscheme slate

" Spell check for Markdown
autocmd FileType markdown setlocal spell spelllang=en_us

" Syntax highlighting
syntax on
