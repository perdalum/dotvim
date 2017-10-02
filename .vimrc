execute pathogen#infect()
syntax on
filetype plugin indent on

let mapleader = " "
let maplocalleader = ";"
nnoremap <SPACE> <Nop>


set wrap
set linebreak

" local maps
nnoremap å <C-]>
"map <space><space> <PageDown>

" vimtex
source ~/.vim/latex.vim

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on


if has('gui_running')
  set guifont=Hack:h12
endif

" Emacs has a pretty great feature called “Occur” and to use it you do the ol’ M-x occur. But I’m a Vim user, and so this is the solution I’ve come up with:
" 
" nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>
" So my work flow is as follows:
" 
" I search for what I’m trying to find with the usual /my query<CR>.
" 
" If I didn’t hit what I was looking for then I hit g/ and find the line containing what I’m looking for and hit to be taken there.
nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>

set showbreak=…

"Previous buffer
nnoremap <silent> ∫ :bp<Return> 
"Next buffer
nnoremap <silent> ƒ :bn<Return>
"List buffers 
nnoremap gb :ls<CR>:buffer<Space>
"
" Move visually
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

" Make arrow keys behave as somebody wanted them to
nnoremap <up> gk
nnoremap <down> gj
inoremap <up> <C-O>gk
inoremap <down> <C-O>gj
vnoremap <up> gk
vnoremap <down> gj

