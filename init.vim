call plug#begin()

Plug 'dense-analysis/ale'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'tpope/vim-endwise'

Plug 'preservim/nerdtree'

call plug#end()

let g:ale_linters = { 
\  'ruby': ['standardrb'],
\ }

let g:ale_fixers = { 
      \    'ruby': ['standardrb'],
      \}

let g:ale_fix_on_save = 1 

let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['/usr/local/bin/solargraph', 'stdio'],
    \ }

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

highlight Comment ctermfg=grey
