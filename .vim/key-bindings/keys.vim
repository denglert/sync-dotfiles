" Nerd toggle
nmap <F2> :NERDTreeToggle<cr>
nmap <F3> :NERDTreeFind<cr>

" Exit highlight mode when pressing the <ESC> button
nnoremap <silent> <esc> :noh<cr><esc>

" Easymotion key binding 
nmap s <Plug>(easymotion-s2)
vmap s <plug>(easymotion-s2)

" Custom key mapping
:imap jj <Esc>

nmap -= i// Debuggg <CR><BS><BS><BS>>std::cerr << " " << std::endl;<Esc>6bli
imap -= // Debuggg <CR><BS><BS><BS>std::cerr << " " << std::endl;<Esc>6bli

nmap 0p :!gnuplot %
nmap 0l :!latexmk -pdf %
nmap 0k :!tdr --style=note b AN

vnoremap <C-i> :call Incr()<CR>

" --- vim-multiple-cursors settings --- "
let g:NumberToggleTrigger="<C-l>"

" --- Perform arithmetic calculation --- "
nnoremap Q 0yt=A<C-r>=<C-r>"<CR><Esc>

" - Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" - Leader key binding
let mapleader = ","

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" --- vim-syntastic toggle --- "
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
