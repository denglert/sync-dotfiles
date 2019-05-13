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
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
hi Normal ctermbg=none
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_bold = 1

" --- vim-fugitive settings --- "
" - Makes the quickfix window open up when you
"   execute :Glog 
autocmd QuickFixCmdPost *grep* cwindow

" --- vim-syntastic settings --- "
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

"""""""""""""""""""""""""""""""
""" --- Ctrl+P settings --- """
"""""""""""""""""""""""""""""""

" - https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


""""""""""""""""""""""""""""""""""""""
""" --- YouCompleteMe settings --- """
""""""""""""""""""""""""""""""""""""""
" - https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

""""""""""""""""""""""""""""""""""
""" --- UltiSnips settings --- """
""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsListSnippets="<Leader>sl"
"let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" - Stored UltiSnips under ~/.vim/UltiSnips
" - c.f. https://github.com/SirVer/ultisnips/issues/709
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
