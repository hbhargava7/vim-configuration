runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark

set backspace=indent,eol,start

set hlsearch
set relativenumber
set ruler

set tabstop=4

hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=&P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=2
set noshowmode

let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#completion#bib#mode = 'fallback'
let g:pandoc#modules#disabled = ["folding"]
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

command Render Pandoc pdf -V geometry:margin=1in --latex-engine=xelatex --variable urlcolor=cyan

set guifont=Menlo\ Regular:h14

set number


