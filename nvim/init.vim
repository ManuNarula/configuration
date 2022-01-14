"    rules 
syntax enable                           
set ruler
set cursorline
set cursorcolumn
set hidden                             
set encoding=utf-8                     
set pumheight=10                       
set fileencoding=utf-8                  
set cmdheight=2                         
set iskeyword+=-                      	
set mouse=a                             
set t_Co=256                            
set conceallevel=0                      
set shiftwidth=2                        
set smartindent                         
set autoindent                          
set laststatus=0                        
set number
set relativenumber
set nobackup                            
set nowritebackup                       
set updatetime=300                      
set timeoutlen=500                      
set formatoptions-=cro                  
set clipboard=unnamedplus               
set noshowmode
set showtabline=2
"set tabstop=2
"set smarttab
"set expandtab
set nocompatible
filetype plugin on
set guifont=JetBrainsMono\ Nerd\ Font:h18


"   Plugins 
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'rakr/vim-two-firewatch'
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/goyo.vim'
    call plug#end()

"    colors 
set background=dark 
let g:two_firewatch_italics=1
colo two-firewatch
let g:colors_name = 'two-firewatch'

" GUI settings 
if (has("termguicolors"))
set termguicolors
    "highlight Normal guibg=none
    "highlight NonText guibg=none
    hi LineNr ctermbg=NONE guibg=NONE
endif
if has('gui_running')
"    set guifont=JetBrainsMono:h14
endif 

" lua 
"colorscheme tokyonight
lua require ("user.colorizer")
"lua require ("user.bubbles")
lua require ("user.better-bubbles")
"lua require ("user.lualine-config")
lua require ("user.barbar")
lua require ("user.gitsigns")

lua << END
require('lualine').setup()
END
