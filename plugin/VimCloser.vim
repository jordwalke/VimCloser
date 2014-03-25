let s:prevtabnum=tabpagenr('$')
let s:prevtabnumfocused=tabpagenr()
augroup TabClosed
    autocmd! TabEnter * :if tabpagenr()>1 && s:prevtabnumfocused != s:prevtabnum && tabpagenr('$')<s:prevtabnum
                \       |   tabprevious
                \       |endif
                \       |let s:prevtabnum=tabpagenr('$')
                \       |let s:prevtabnumfocused=tabpagenr()
augroup END
