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
" Plug 'https://github.com/github/copilot.vim'
Plug 'kkoomen/vim-doge'

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabnext<CR>
nnoremap <C-q> :tabprevious<CR>

:colorscheme jellybeans
inoremap <expr> <TAB> pumvisible() ? coc#_select_confirm() : "<TAB>"

let g:doge_doc_standard_python = 'numpy'
nmap <silent> <C-d> <Plug>(doge-generate)
nmap <silent> <C-TAB> <Plug>(doge-comment-jump-forward)
nmap <silent> <C-S-TAB> <Plug>(doge-comment-jump-backward)
imap <silent> <C-TAB> <Plug>(doge-comment-jump-forward)
imap <silent> <C-S-TAB> <Plug>(doge-comment-jump-backward)
smap <silent> <C-TAB> <Plug>(doge-comment-jump-forward)
smap <silent> <C-S-TAB> <Plug>(doge-comment-jump-backward)

lua << EOF
require("nvim-autopairs").setup {}

EOF
