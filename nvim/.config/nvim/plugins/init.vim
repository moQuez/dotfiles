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

  " Code editing
  Plug 'tpope/vim-commentary'

  "Syntax highlighting
  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

  " Intellisense
  Plug 'neovim/nvim-lspconfig'

  " Eye Candy
  Plug 'dracula/vim', { 'name': 'dracula' }

  " Navigation
  Plug 'kyazdani42/nvim-web-devicons' 
  Plug 'kyazdani42/nvim-tree.lua'

call plug#end()
