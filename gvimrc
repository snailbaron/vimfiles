set guioptions-=m
set guioptions-=T
set lines=55
set columns=150
if has('win32')
    set guifont=Consolas:h10:cDEFAULT
elseif has('unix')
    set guifont=DejaVu\ Sans\ Mono\ 11
endif

" Cyrillics lmaps setting (gui-related)
highlight lCursor guifg=NONE guibg=Cyan

" Highlight line under cursor
set cursorline
highlight CursorLine guibg=Grey10

