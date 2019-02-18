""""""""""""""""""""""
""" --- Config --- """
""""""""""""""""""""""

" - Leader key binding
let mapleader = ","


"""""""""""""""""""""""""""""""""""
""" --- Custom key mappings --- """
"""""""""""""""""""""""""""""""""""

" - Exit insert mode with jj
:imap jj <Esc>


" - Exit highlight mode when pressing the <ESC> button
nnoremap <silent> <esc> :noh<cr><esc>

" - Increment numbers
vnoremap <C-i> :call Incr()<CR>


" - Line numbering on/off
nnoremap <Leader>n :set number! number?<cr>


" - Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" -- Leader commands --- "
map <Leader>q :q<CR>
map <Leader>s ysiW


" - map sort function to a key
vnoremap <Leader>so :sort<CR>


nnoremap <leader>diff :call VimDiffToggle()<cr>

"""""""""""""""""""""""""""
""" --- Nerd toggle --- """
"""""""""""""""""""""""""""

nmap <F2> :NERDTreeToggle<cr>
nmap <F3> :NERDTreeFind<cr>


""""""""""""""""""""""""""
""" --- Easymotion --- """
""""""""""""""""""""""""""

" Easymotion key binding 
nmap s <Plug>(easymotion-s2)
vmap s <plug>(easymotion-s2)


""""""""""""""""""""""""""""""""
""" --- vim-numbertoggle --- """
""""""""""""""""""""""""""""""""

let g:NumberToggleTrigger="<C-l>"
nnoremap <silent> <C-l> :set relativenumber!<cr>
set number norelativenumber


""""""""""""""""""""""""""
""" --- Calculator --- """
""""""""""""""""""""""""""

" --- Perform arithmetic calculation --- "
" - Integer accuracy
nnoremap Q 0yt=A<C-r>=<C-r>"<CR><Esc>

" - Floating point accuracy
nnoremap <Leader>ma yyp^y$V:!perl -e '$x = <C-R>"; print $x'<CR>-y0j0P


""""""""""""""""""""""""""""""""""""
""" --- vim-syntastic toggle --- """
""""""""""""""""""""""""""""""""""""
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>


""""""""""""""""""""""
""" --- Python --- """
""""""""""""""""""""""

" -- Vimux run python
map <Leader>p :call VimuxRunCommand("clear; python " . expand("%:p"))<CR>

"""""""""""""""""""
""" --- Git --- """
"""""""""""""""""""

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

"""""""""""""""""""""""
""" --- Browser --- """
"""""""""""""""""""""""

map <Leader>bo :exe ':silent !firefox %:p'<CR>

"""""""""""""""""""
""" --- C++ --- """
"""""""""""""""""""

map <Leader>cdg :r ~/.vim/template/C++/debug.cpp<CR> jf"li
map <Leader>cpp :r ~/.vim/template/C++/cpp.cc<CR>

"nmap -= i// Debuggg <CR><BS><BS><BS>>std::cerr << " " << std::endl;<Esc>6bli
"imap -= // Debuggg <CR><BS><BS><BS>std::cerr << " " << std::endl;<Esc>6bli

"""""""""""""""""""""
""" --- Latex --- """
"""""""""""""""""""""

"map <Leader>lc :!touch expand('%:p'); make<CR>
"map <Leader>lc :call system('touch ' . expand('%:p') . ':' . line('.'))<CR>!make<>
"
nmap 0l :!latexmk -pdf %
map <Leader>lc :!touch %:p; make<CR>
map <Leader>lco :r ~/.vim/template/latex/columns.tex<CR>

map <Leader>li :r ~/.vim/template/latex/itemize.tex<CR> j A
map <Leader>lg :r ~/.vim/template/latex/graphics.tex<CR> f/
map <Leader>lf :r ~/.vim/template/latex/figure.tex<CR>jjff
map <Leader>le :r ~/.vim/template/latex/equation.tex<CR>jA
map <Leader>lal :r ~/.vim/template/latex/aligned.tex<CR>jjA
map <Leader>les :r ~/.vim/template/latex/equationstar.tex<CR>jA
map <Leader>lt :r ~/.vim/template/latex/table.tex<CR>

"""""""""""""""""""""""""""""
""" --- Documentation --- """
"""""""""""""""""""""""""""""

map <Leader>doc :r ~/.vim/template/docs/code_docs.md<CR>

"""""""""""""""""""""""
""" --- gnuplot --- """
"""""""""""""""""""""""

map <Leader>gnu :r ~/.vim/template/gnuplot/skeleton.gnu<CR>
nmap 0p :!gnuplot %

""""""""""""""""""""""""
""" --- Makefile --- """
""""""""""""""""""""""""
map <Leader>mcpp :r ~/.vim/template/Makefile/cpp_project.Makefile<CR>


""""""""""""""""""""""""
""" --- Markdown --- """
""""""""""""""""""""""""

imap <Leader>msb <sub></sub><Esc>5hi
imap <Leader>msp <sup></sup><Esc>5hi


" - Toggle between paste mode
set pastetoggle=<Leader>tp


"""""""""""""""""""""""""
""" --- EasyAlign --- """
"""""""""""""""""""""""""

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
