" Increment numbers macro
function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction

" Set working directory to the currently edited file
command Cwd execute ":cd %:p:h"

" CPP templates
command Cpptempl 0read ~/.vim/template/cpp.cc | set syntax=cpp | goto21 | startinsert 
command R2gpp read ~/.vim/template/R2gpp.cc | set syntax=cpp
command Gplot 0read ~/.vim/template/gnuplot | set syntax=gnuplot

" Write and compile autocommand
set makeprg=g++\ -o\ %<\ %
command Wc execute ":w | !g++\ -o\ ../bin/%<\ % "

" Run the binary of the compiled source file
command Rb execute "! ../bin/%<"
