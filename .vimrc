" --------------------- "
" ---    .vimrc     --- "
" --------------------- "

" - Import - "
source ~/.vim/general/general.vim
source ~/.vim/macros/macros.vim
source ~/.vim/functions/functions.vim
source ~/.vim/key-bindings/keys.vim
source ~/.vim/packages/settings.vim

" - Import local vimrc if it exists
if filereadable(expand("~/.vimrc_local"))
	source ~/.vimrc_local
endif

" - Show line number - "
set number

" - Formatting - "
set tabstop   =3
set textwidth =100

" - Statusline - "
set laststatus=2
set statusline=%f\ \ \ \ %l\:%c
" f = file
" l = line number
" c = column number

" Program to use for the make command
" set makeprg=g++\ -o\ %<\ %

"""""""""""""""""""""
" ---  Packages --- "
"""""""""""""""""""""

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/packages/packages.vim

" - Required for Vundle - "
filetype off

""""""""""""""""""""""""
""" --- Filetype --- """
""""""""""""""""""""""""

filetype plugin indent on

"""""""""""""""""""""
""" --- Color --- """
"""""""""""""""""""""

" - Color scheme - "
set background=dark
color solarized
"set t_Co=256


" Tilde colour is same as the default colour
" 12 = default colour
highlight NonText ctermfg=12
