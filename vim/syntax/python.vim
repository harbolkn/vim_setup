set tw=78 tw=4 sw=4 sta et sts=4 ai
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

let python_highlight_all = 1

" Autocomplete using ctrl-space
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" Uses VISUAL to select a range and hit ctrl-h to execute it
python << EOL
import vim
def EvaluateCurrentRange():
	eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
vnoremap <C-a> :py EvaluateCurrentRange()

" Uses VISUAL to select and toggel commenting on lines using ctrl-c
vnoremap <C-c> :s#^#\##<cr>
vnoremap -<C-c> :s#^\###<cr>

" Highlight some python errors
syn match pythonError "^\s*def\s\+\w\+(.*)\s*$" display
syn match pythonError "^\s*class\s\+\w\+(.*)\s*$" display
syn match pythonError "^\s*for\s.*[^:]$" display
syn match pythonError "^\s*except\s*$" display
syn match pythonError "^\s*finally\s*$" display
syn match pythonError "^\s*try\s*$" display
syn match pythonError "^\s*else\s*$" display
syn match pythonError "^\s*else\s*[^:].*" display
syn match pythonError "^\s*if\s.*[^\:]$" display
syn match pythonError "^\s*except\s.*[^\:]$" display
syn match pythonError "^\s*while\s.*[^\:]$" display
syn match pythonError "^\s*return\s.*:$" display
syn match pythonError "&&" display
syn match pythonError "||" display
syn match pythonError "[;]$" display
syn keyword pythonError do
highlight link pythonError WarningMsg 

" Highlight certain python keywords
syn keyword Boolean true True false False

set nohlsearch
