" Skrevet for Macbook Pro 2024-05-29

filetype plugin indent on
" Turn syntax highlighting on.
syntax on

set backspace=indent,eol,start  " backspace like you would expect
set wrap                        " use word wrapping
set linebreak                   " wrap at word bounds
set nolist                      " do not show whitespace characters


" Add numbers to each line on the left-hand side.
set number relativenumber

" Use highlighting when doing a search.
set hlsearch

" Mapper jj til esc
inoremap jj <esc>

set nocompatible

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Jeg håper denne vil gjøre slik at alt går rett til clipboard
set clipboard+=unnamedplus

"undofile tells Vim to create <FILENAME>.un~ files whenever you edit a file. These files contain undo information so you can undo previous actions even after you close and reopen a file.
set undofile

" Vurder denne
set noerrorbells


" #################
" Plugins går her
" #################
"
call plug#begin()

" Your plugins go here
"Plug 'altercation/vim-colors-solarized'
Plug 'sainnhe/everforest'

" Linjen nederst
Plug 'itchyny/lightline.vim'

" Bedre syntaksmarkering
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Goyo: Distraksjonsfri skriving
Plug 'junegunn/goyo.vim'

" Limelight: Fokuserer kun på dette avsnittet
Plug 'junegunn/limelight.vim'

" Fuzzysøk etter filer
Plug 'ctrlpvim/ctrlp.vim'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
"#######################

" Important!!
     "   if has('termguicolors')
      "    set termguicolors
       " endif

        " For dark version.
        set background=dark

        " For light version.
      "  set background=light

        " Set contrast.
        " This configuration option should be placed before `colorscheme everforest`.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:everforest_background = 'hard'

        " For better performance
        let g:everforest_better_performance = 1

        colorscheme everforest

let g:lightline = {'colorscheme' : 'everforest'}