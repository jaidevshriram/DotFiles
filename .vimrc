set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'romainl/vim-cool'
Plugin 'machakann/vim-highlightedyank'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'jakedouglas/exuberant-ctags'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on

" airline symbols
" set guifont="DroidSans\ Mono\ Nerd"
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set virtualedit=all
set t_Co=256
syntax on
set hlsearch
set mouse=a
set smartcase
set ignorecase
set incsearch
set autoindent
set smartindent
" set shiftwidth=8
" set smarttab
" set softtabstop=8
" set tabstop=8
" set noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set guicursor=i:ver25-iCursor
map <C-n> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror
nmap <C-m> :NERDTreeFind<CR>

colorscheme onehalfdark
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

let g:AutoClosePreserveDotReg = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onehalfdark'
augroup nerdtree_clear
	autocmd!
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | bd | endif
augroup end
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set noswapfile

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd BufEnter NERD_* setlocal rnu



" Mapping for buffer switching

map <C-Right> :bn<CR>
map <C-Left> :bp<CR>
map <C-w> :bd<CR>
