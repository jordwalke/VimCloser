" Almost works perfectly! Except when closing the last buffer while a nerd tree
" is also open.
let s:prevtabnum=tabpagenr('$')
augroup TabClosed
    autocmd! TabEnter * :if tabpagenr('$')<s:prevtabnum && tabpagenr()>1 && tabpagenr()<tabpagenr('$')
                \       |   tabprevious
                \       |endif
                \       |let s:prevtabnum=tabpagenr('$')
augroup END
