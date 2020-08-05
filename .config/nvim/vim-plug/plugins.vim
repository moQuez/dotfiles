" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Defaults
  Plug 'tpope/vim-sensible'

  " Programing syntax
  Plug 'jparise/vim-graphql'  
  Plug 'pangloss/vim-javascript'
  Plug 'moQuez/vim-jsx-pretty'
  Plug 'HerringtonDarkholme/yats.vim'

  " Programming tools
  " - Tools
  Plug 'voldikss/vim-floaterm'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " - Code editing
  Plug 'tpope/vim-commentary'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

  " - Conquer of Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

  " - QoL
  Plug 'liuchengxu/vim-which-key'

  " if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  "   let g:coc_global_extensions += ['coc-prettier']
  " endif

  if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
  endif

  " Eye candy
  Plug 'moQuez/dracula-vim', { 'as': 'dracula' }

  " Tools
  Plug 'vimwiki/vimwiki' 

call plug#end()



