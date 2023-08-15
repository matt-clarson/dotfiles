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


" Language packs
Plug 'sheerun/vim-polyglot'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'

" DevIcons
Plug 'kyazdani42/nvim-web-devicons'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'folke/trouble.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


" Status line
Plug 'nvim-lualine/lualine.nvim'

" Git
Plug 'kdheepak/lazygit.nvim'

" Comments
Plug 'terrortylor/nvim-comment'

" Extra language bits
Plug 'pangloss/vim-javascript' "JS support
Plug 'leafgarland/typescript-vim' "TS support
Plug 'maxmellon/vim-jsx-pretty' "JS and JSX syntax
Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'

call plug#end()

"==========================================
" VIM mappings
"==========================================

" LSP Commpletion
set completeopt=menu,menuone,noselect

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

" Neoformat mappings
nmap <Leader><Space> <cmd>Neoformat<cr>

" enable emmet in tsx files
autocmd FileType html,css,typescriptreact EmmetInstall


"==========================================
" Initialise Lua Scripts
"==========================================

lua require("profile")
