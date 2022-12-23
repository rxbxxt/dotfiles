call plug#begin()

Plug 'vim-ruby/vim-ruby'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-endwise'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'myshc/bittersweet'

call plug#end()


"highlight Comment ctermfg=gray
colorscheme bittersweet

set tabstop=2
set shiftwidth=2
set expandtab
set ai
"set number
set hlsearch
set ruler
set scrolloff=8
set ignorecase
set smartcase
set gdefault
set nohlsearch
set showmatch
set hidden

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

nnoremap ,ff <cmd>Telescope find_files<cr>
nnoremap ,fg <cmd>Telescope live_grep<cr>

nnoremap L gt
nnoremap H gT
