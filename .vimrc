syntax enable 
set number 
set relativenumber 
set mouse=a
set smartindent 
set autoindent
set clipboard=unnamedplus
"set showtabline=2
set laststatus=2

call plug#begin()
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'L04DB4L4NC3R/texgroff.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'Badacadabra/vim-archery'

call plug#end()

set spell spelllang=en_us

if (has("termguicolors"))
set termguicolors
   hi LineNr ctermbg=NONE guibg=NONE
endif

colorscheme archery


"let g:airline#extensions#tabline#enabled = 1 
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_theme = 'archery'
