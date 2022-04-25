"==========================================
" General
"==========================================

syntax on
set ma
set mouse=a
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoread
set nobackup
set nowritebackup
set noswapfile
set rnu
set foldlevelstart=99
set scrolloff=7
set clipboard=unnamedplus

"==========================================
" Plugins
"==========================================

call plug#begin('~/.config/nvim/autoload')

" colours
" Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'rose-pine/neovim', {'as': 'rose-pine'}

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Language packs
Plug 'sheerun/vim-polyglot'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" DevIcons
Plug 'kyazdani42/nvim-web-devicons'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'folke/trouble.nvim'

" Status line
Plug 'nvim-lualine/lualine.nvim'

" Git
Plug 'kdheepak/lazygit.nvim'

" Extra language bits
Plug 'pangloss/vim-javascript' "JS support
Plug 'leafgarland/typescript-vim' "TS support
Plug 'maxmellon/vim-jsx-pretty' "JS and JSX syntax
Plug 'prettier/vim-prettier'

call plug#end()

"==========================================
" VIM mappings
"==========================================

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Use Trouble to view errors/warnings etc.
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xc <cmd>TroubleClose<cr>

" Git
nnoremap <leader>gg <cmd>LazyGit<cr>

" Prettier format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" Prettier mappings
nnoremap <leader>pf <cmd>PrettierAsync<cr>


"==========================================
" Initialise Lua Scripts
"==========================================

lua require("profile")
