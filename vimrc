if !exists("autocommands_loaded")
    let autocommands_loaded=1
    autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python
endif

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif |endif

set number
