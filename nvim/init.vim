
"My init.vim - Manu Narula

"""Sourcing"""
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim

 """Settings"""
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
set tabstop=2                          
set shiftwidth=2                        
set smarttab                            
set expandtab                           
set smartindent                         
set autoindent                          
set laststatus=0                        
set number
set relativenumber
set showtabline=2                       
set nobackup                            
set nowritebackup                       
set updatetime=300                      
set timeoutlen=500                      
set formatoptions-=cro                  
set clipboard=unnamedplus               

au! BufWritePost $MYVIMRC source %      

cmap w!! w !sudo tee %

"function! StartUp()
"    if 1 == argc()
"        NERDTree
"    end
"endfunction

"autocmd VimEnter * call StartUp()

 """Vim-Plug"""
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'joshdick/onedark.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'
    Plug 'badacadabra/vim-archery'
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'junegunn/goyo.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'liuchengxu/vim-which-key'
    Plug 'jreybert/vimagit'
    Plug 'rakr/vim-two-firewatch'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    call plug#end()


 """Theming""""

 "colorscheme archery
"colorscheme archery
set background=dark  
let g:two_firewatch_italics=1
colo two-firewatch

let g:colors_name = 'two-firewatch'

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_theme = 'two-firewatch' 
let g:airline_theme = 'archery' 
set showtabline=2
set noshowmode

"""Lua"""
lua require'plug-colorizer'
