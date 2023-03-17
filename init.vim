call plug#begin()

Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim' " telescope dependency 
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'bfrg/vim-cpp-modern'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'miyakekichiro/bittersweet'

call plug#end()


colorscheme bittersweet
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set scrolloff=8
set ignorecase
set smartcase
set gdefault
set nohlsearch
set showmatch
set hidden


nnoremap L gt
nnoremap H gT

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap ,ff <cmd>Telescope find_files<cr>
nnoremap ,fg <cmd>Telescope live_grep<cr>
