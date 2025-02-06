call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'romgrk/barbar.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'LudoPinelli/comment-box.nvim'

" Dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Snippet
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Theme
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

lua require('snippet')
"lua require('completion')
lua require('tree')
lua require('treesitter')
"lua require('lsp')
lua require('telescope')

" Plugin config
let g:Lf_WindowPosition = 'popup'

" Shortcut
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>
inoremap [ []<Left>

nnoremap <F2> :NvimTreeToggle<Enter>
nnoremap <C-Right> :BufferNext<Enter>
nnoremap <C-s> :w<Enter>
nnoremap <C-Left> :BufferPrevious<Enter>
nnoremap <C-c> :BufferClose<Enter>
nnoremap <C-p> :BufferPin<Enter>
nnoremap <F3> :FloatermNew<Enter>

tnoremap <Esc> <C-\><C-n>:q!<Enter>

" Config
set hlsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set cc=80
syntax on
set mouse=a
set cursorline
set ttyfast
set ai

" Theme
" let g:catppuccin_flavour = "mocha"
colorscheme catppuccin

" Patch
