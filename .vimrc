" --------------------- "
" ---    .vimrc     --- "
" --------------------- "

" - Import - "
source ~/.vim/general/general.vim
source ~/.vim/macros/macros.vim
source ~/.vim/key-bindings/keys.vim

" - Color scheme - "
colorscheme delek

" - Show line number - "
set number

" - Formatting - "
set tabstop   =3
set textwidth =80

" - Statusline - "
set laststatus=2
set statusline=%f\ \ \ \ %l\:%c
" f = file
" l = line number
" c = column number

" - Required for Vundle - "
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Packages:
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-obsession'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'msanders/snipmate.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

filetype plugin indent on
