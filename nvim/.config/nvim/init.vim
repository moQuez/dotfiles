" Behaviour
syntax enable
set smartindent
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set noswapfile
set nobackup
set nu
set rnu
set numberwidth=4
set splitright
set splitbelow

" Remapping
source $HOME/.config/nvim/remaps.vim

" Plugins
source $HOME/.config/nvim/plugins/init.vim

" Pugins config
source $HOME/.config/nvim/plugins/config/lspconfig.vim
luafile $HOME/.config/nvim/lua/lsp/javascript-ls.lua
luafile $HOME/.config/nvim/lua/lsp/vim-ls.lua
luafile $HOME/.config/nvim/lua/treesitter.lua

" Eye Candy
syntax enable
set termguicolors
colorscheme dracula