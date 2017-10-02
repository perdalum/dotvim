
"let g:vimtex_fold_enable
let g:vimtex_latexmk_options = '-xelatex -pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_CompileRule_pdf = 'xelatex --shell-escape --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'open -a Preview.app' 
let g:Tex_DefaultTargetFormat='pdf'
" the next line ensures automatical compilation of TeX when buffer is saved
au BufWritePost *.tex silent call Tex_CompileLatex()
"
" command to refresh Preview.app
nmap <silent> <leader>a :!osascript -e 'tell application "Preview" to activate' -e 'tell application "MacVim" to activate'&<CR><CR>
