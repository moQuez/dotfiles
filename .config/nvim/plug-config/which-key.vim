" By default timeoutlen is 1000 ms
set timeoutlen=500

" Map to add keys to
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ ':Commentary'            , 'comment' ]
let g:which_key_map['q'] = [ ':q'                     , 'close window' ]
let g:which_key_map['s'] = [ ':w'                     , 'write' ]
let g:which_key_map['R'] = [ ':source $MYVIMRC'       , 'reload vim' ]
let g:which_key_map['n'] = [ ':NERDTreeToggle'        , 'source tree' ]

" Register which key map
call which_key#register("'", "g:which_key_map")
