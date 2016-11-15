" Nerd toggle
nmap <F2> :NERDTreeToggle<cr>

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
nmap 0i :!latexmk -f -pdf tdk.tex
nmap öü :!latexmk -pdf thesis.tex

vnoremap <C-i> :call Incr()<CR>
