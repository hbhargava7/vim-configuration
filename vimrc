"Pathogen and Runtime
set nocp
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

let g:pymode_python = 'python3'

set tabstop=4
set hlsearch
set relativenumber
set ruler

"Basics
syntax on
filetype plugin indent on

"Fix for set nospell with Pandoc bug
autocmd FileType pandoc setlocal nowrap
autocmd FileType pandoc setlocal nospell
autocmd FileType pandoc setlocal foldcolumn=0

"Aesthetics
set background=dark
set backspace=indent,eol,start

"Key Remaps
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap ; :CtrlPBuffer<CR>
nmap \e :NERDTreeToggle<CR>
nmap \j <C-w>b
"nmap \x :w|bd

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

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
let g:pandoc#command#latex_engine = "xelatex"

command Render Pandoc pdf -V geometry:margin=1in --variable urlcolor=cyan

set guifont=Menlo\ Regular:h14

set number


