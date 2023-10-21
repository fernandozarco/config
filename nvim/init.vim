set number
set mouse=a
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber


call plug#begin('~/.vim/plugged')

" Themes
Plug 'sainnhe/gruvbox-material'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()


" Gruvbox configuration
set background=dark
let g:gruvbox_material_background='medium'
colorscheme gruvbox-material


" LSP config

lua << EOF
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF
