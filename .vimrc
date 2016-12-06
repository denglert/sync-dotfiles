" --------------------- "
" ---    .vimrc     --- "
" --------------------- "
"
" - Import - "
source ~/.vim/general/general.vim
source ~/.vim/macros/macros.vim
source ~/.vim/key-bindings/keys.vim
source ~/.vim/plugin/settings.vim

if filereadable(expand("~/.vim.local"))
	source ~/.vim_local
endif


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

"""""""""""""""""""""
" ---  Packages --- "
"""""""""""""""""""""

" - Vundle package intsaller
Bundle 'gmarik/vundle'
" - Supertab
Bundle 'ervandew/supertab'
" - Easymotion
Bundle 'easymotion/vim-easymotion'
" - Nerdtree file manager
Bundle 'scrooloose/nerdtree'
" - Continuously updated session file
Bundle 'tpope/vim-obsession' 
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'msanders/snipmate.vim'
" - Solarized colorscheme
" Bundle 'altercation/vim-colors-solarized'
" - Relative/absolute line number toggle
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
" - Autocompletion library for vim
 Bundle 'davidhalter/jedi-vim.git'
" - Sublime like multiple cursors
Bundle 'terryma/vim-multiple-cursors'
" - Ag search
Bundle 'rking/ag.vim'
" - YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" - Fuzzy file finder
Bundle 'kien/ctrlp.vim'
" - Git integration with vim
Bundle 'tpope/vim-fugitive'
" - Syntax checker
Bundle 'vim-syntastic/syntastic'


filetype plugin indent on

" - Color scheme - "
" colorscheme delek

"set t_Co=256
set background=dark
color solarized

" Tilde colour is same as the default colour
" 12 = default colour
highlight NonText ctermfg=12
