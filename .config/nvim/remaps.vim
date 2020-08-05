let g:mapleader="'"

" Editing
inoremap jk <ESC>
inoremap <ESC> <NOP>

" Handy tools
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>R :source $MYVIMRC<CR>

" Movement
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" Force using normal movement
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>

" vim-commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" NERDTREE
nnoremap <leader>n :NERDTreeToggle<CR>

" Jest (Coc)
" Run jest for current test
nnoremap <leader>jc :JestCurrent<CR>

" Run jest for current file
nnoremap <leader>js :call CocAction('runCommand', 'jest.singleTest')<CR>

" Run jest for current project
nnoremap <leader>jp :Jest<CR>

" Which Key
noremap <silent> <leader> :WhichKey "'"<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual "'"<CR>

