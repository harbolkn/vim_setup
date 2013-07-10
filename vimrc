if !exists("autocommands_loaded")
    let autocommands_loaded=1
    autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
    autocmd BufRead,BufNewFile,FileReadPost *.js source ~/.vim/javascript.vim
    autocmd BufRead,BufNewFile,FileReadPost *.html source ~/.vim/html.vim
endif

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif |endif

set number
syntax on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

syn keyword Flag Assumption
syn keyword Flag NOTE
syn keyword Flag FIXME
syn keyword Flag ERROR
highlight link Flag DiffDelete
