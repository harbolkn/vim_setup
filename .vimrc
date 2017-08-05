execute pathogen#infect()
execute pathogen#helptags()
syntax on

filetype on
filetype plugin on
filetype indent on

if !exists("autocommands_loaded")
    let autocommands_loaded=1
    autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
    autocmd BufRead,BufNewFile,FileReadPost *.aurora source ~/.vim/python.vim
    autocmd BufRead,BufNewFile,FileReadPost *.js source ~/.vim/javascript.vim
    autocmd BufRead,BufNewFile,FileReadPost *.html source ~/.vim/html.vim
endif

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif |endif

set nu
set paste

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

syn keyword Flag NOTE
syn keyword Flag FIXME
syn keyword Flag ERROR
highlight link Flag DiffDelete

let g:niji_matching_filetypes = ['javascript', 'less']
