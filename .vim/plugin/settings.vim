" --- vim-numbertoggle settings --- "
" - Default relativemode setting is off
" - Enable it with Numbertoggle (CTRL+N)
let g:relativemode = 0

" --- jedi-vim settings --- "
" - Don't activate on typing dot
let g:jedi#popup_on_dot = 0
" - Disables parameter list completion
let g:jedi#show_call_signatures = "0"

" --- vim-solarized settings --- "
" - Needed for transparent background
hi Normal ctermbg=none
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
