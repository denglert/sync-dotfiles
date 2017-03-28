" - Leader key binding
let mapleader = ","

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
" - Integer accuracy
nnoremap Q 0yt=A<C-r>=<C-r>"<CR><Esc>

" - Floating point accuracy
nnoremap <Leader>ma yyp^y$V:!perl -e '$x = <C-R>"; print $x'<CR>-y0j0P

" - Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" -- Leader commands --- "
map <Leader>q :q<CR>

" -- Leader commands --- "
map <Leader>s ysiW


" map sort function to a key
vnoremap <Leader>so :sort<CR>

" --- vim-syntastic toggle --- "
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" --- Vimux run python --- "
map <Leader>p :call VimuxRunCommand("clear; python " . expand("%:p"))<CR>

" --- Git commands --- "
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Gpush<CR>
map <Leader>gb :Gbrowse<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gg :Gpull<CR>
map <Leader>gl :Glog<CR>
map <Leader>gw :Gwrite<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gwp :!git add . && git commit -m "Work in progress." && git push<CR>
map <Leader>gcp :!git add . && git commit && git push<CR>

map <Leader>diff :windo diffthis<CR>

" --- Browser commands

map <Leader>bo :exe ':silent !firefox %:p'<CR>

" --- Latex commands

map <Leader>lc :!touch *.tex; make<CR>
map <Leader>li :r ~/.vim/template/latex/itemize.ltx<CR> j A
map <Leader>lg :r ~/.vim/template/latex/graphics.ltx<CR> f/

" --- gnuplot commands

map <Leader>gnu :r ~/.vim/template/gnuplot/skeleton.gnu<CR>


"nnoremap <leader>diff :call VimDiffToggle()<cr>
"
"function! VimDiffToggle()
"	let isdiff = set diff?
"	echo isdiff
"    if isdiff == "nodiff"
"		windo diffthis
"    else
"		diffoff!
"    endif
"endfunction
