"==============================================================================
"
" KEYBOARD SETTINGS
"
"==============================================================================
"
"Set <leader>
let mapleader = ","

"Set navigate shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



"==============================================================================
"
" PLUGINS SETTINGS
"
"==============================================================================

"=============================
" Vundle plugin
"=============================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"=============================
" Nerdtree plugin
"=============================
Plugin 'scrooloose/nerdtree.git'
autocmd vimenter * NERDTree
nmap <leader><leader> : NERDTreeToggle<cr>

"=============================
" colorscheme plugin
"=============================
Plugin 'kristijanhusak/vim-hybrid-material.git'
set background=dark
colorscheme hybrid_material

"=============================
" javascript plugins
"=============================
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"=============================
" json plugin
"=============================
Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

"=============================
"ctrlp plugin
"=============================
set runtimepath^=~/.vim/bundle/ctrlp.vim

"=============================
"Typescript plugin
"=============================
Plugin 'leafgarland/typescript-vim'

"=============================
" END PLUGINS SECTION
"
" All of your Plugins must
" be added before the
" following line
"=============================
call vundle#end()


"==============================================================================
"
" COMMON SETTINGS
"
"==============================================================================

" disable vi-compatible
set nocompatible

"disable file type detection
filetype off

"Set color column 120
set textwidth=120
set colorcolumn=+1

"show line numbers
set nu

"indents
set tabstop=2
set shiftwidth=2
set expandtab

"Syntax
au BufRead,BufNewFile *.njk setfiletype html

"folding
set foldenable
set foldmethod=indent

" search highlight
set hlsearch

" conceallevel (disable hide symbols in markdown
set conceallevel=0
let g:indentLine_setConceal=0

" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
syntax on;
