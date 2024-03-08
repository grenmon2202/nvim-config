:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set scrolloff=10

call plug#begin()

Plug 'https://github.com/preservim/tagbar'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'windwp/nvim-autopairs'
" Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'folke/lsp-colors.nvim'
Plug 'https://github.com/github/copilot.vim'

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-q> :tabnext<CR>
nnoremap <C-w> :tabprevious<CR>

:colorscheme jellybeans
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

lua << EOF
require("nvim-autopairs").setup {}

EOF
