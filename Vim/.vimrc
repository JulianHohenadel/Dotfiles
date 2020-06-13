syntax on

set clipboard=unnamedplus
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
" Lightline settings
set noshowmode
set laststatus=2
set ttimeoutlen=10

call plug#begin('~/.vim/plugged')

" Autoclose
Plug 'jiangmiao/auto-pairs'
" Autocompletion
Plug 'ycm-core/YouCompleteMe'
" Color Theme
Plug 'morhetz/gruvbox'
" Fast grep <Leader>ps
Plug 'jremmen/vim-ripgrep'
" Git support :G
Plug 'tpope/vim-fugitive'
" Vim manual
Plug 'vim-utils/vim-man'
" Indexer
Plug 'lyuts/vim-rtags'
" File finder <ctrl>p
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
" Undo tree
Plug 'mbbill/undotree'
" Lightline
Plug 'itchyny/lightline.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" Search from root directory
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Space is leader
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

" Lightline theme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd : YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf : YcmCompleter FixIt<CR>
