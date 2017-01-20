set nocompatible
filetype off

" set the runtime path to include vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"NERD Tree musthave
Plugin 'scrooloose/nerdtree.git'

"All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"Set <leader>
let mapleader = ","

"Set navigate shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Set color column 120
set textwidth=120
set colorcolumn=+1

"NERDTree start run
autocmd vimenter * NERDTree

"NerdTree toggle
nmap <leader><leader> : NERDTreeToggle<cr>

"show line numbers
set nu

"solarized color scheme
syntax enable
set background=dark
colorscheme solarized
highlight ColorColumn ctermbg=Magenta 

"indents
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

"Syntax
au BufRead,BufNewFile *.njk setfiletype html

"folding
set foldenable
set foldmethod=indent
