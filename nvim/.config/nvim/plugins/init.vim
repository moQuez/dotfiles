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
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'

  "Syntax highlighting
  " We recommend updating the parsers on update
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
  Plug 'maxmellon/vim-jsx-pretty'


  " Intellisense
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  " Eye Candy
  Plug 'dracula/vim', { 'name': 'dracula' }
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " Navigation
  Plug 'kyazdani42/nvim-web-devicons' 
  Plug 'kyazdani42/nvim-tree.lua'

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Git related
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-fugitive'

call plug#end()
