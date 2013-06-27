set tw=78 tw=4 sw=4 sta et sts=4 ai

let python_highlight_all = 1

set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Autocomplete using ctrl-space
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

" autocmd filetype python source ~/.vim/pydoc.vim

set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" python << EOF
" import os
" import sys
" import vim
" for p in sys.path:
"	if os.path.isdir(p):
"		vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF

" set tags+=$HOME/.vim/tags/python24.ctags

" Use :make to see syntax error (:cn and :cp to move around, :dist to see all errors)
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Uses VISUAL to select a range and hit ctrl-h to execute it
python << EOL
import vim
def EvaluateCurrentRange():
	eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
map <C-h> :py EvaluateCurrentRange()

syn keyword Boolean true True false False

" Uses VISUAL to select and toggel commenting on lines using ctrl-c
" vmap <C-c> <C-R>:s/^/#/g<CR>

" Highlight some python errors
"syn match pythonError "^\s*def\s\+\w\+(.*)\s*$" display
"syn match pythonError "^\s*class\s\+\w\+(.*)\s*$" display
"syn match pythonError "^\s*for\s.*[^:]$" display
"syn match pythonError "^\s*except\s*$" display
"syn match pythonError "^\s*finally\s*$" display
"syn match pythonError "^\s*try\s*$" display
"syn match pythonError "^\s*else\s*$" display
"syn match pythonError "^\s*else\s*[^:].*" display
"syn match pythonError "^\s*if\s.*[^\:]$" display
"syn match pythonError "^\s*except\s.*[^\:]$" display
"syn match pythonError "^\s*while\s.*[^\:]$" display
"syn match pythonError "^\s*return\s.*:$" display
"syn match pythonError "&&" display
"syn match pythonError "||" display
"syn match pythonError "[;]$" display
"syn keyword pythonError do
"highlight link pythonError WarningMsg 

set nohlsearch
