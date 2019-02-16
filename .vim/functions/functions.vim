" - Diff toggle
function! VimDiffToggle()
	let isdiff = set diff?
	echo isdiff
    if isdiff == "nodiff"
		windo diffthis
    else
		diffoff!
    endif
endfunction


" - Increment numbers function
function! Incr()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction

