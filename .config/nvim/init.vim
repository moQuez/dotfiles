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

" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Pugins config
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/coc-jest.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim

" Remapping
source $HOME/.config/nvim/remaps.vim

" Eye Candy
set termguicolors
let g:dracula_colorterm = 0
let g:vim_jsx_pretty_disable_tsx = 1
colorscheme dracula
