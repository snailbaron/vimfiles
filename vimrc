syntax enable
colorscheme desert

" Load plugins with Pathogen
execute pathogen#infect()

" Load plugins by filetypes, but save my indent
filetype on
filetype plugin on
filetype indent off

" Text formatting & indentation
set expandtab
set shiftwidth=4
set tabstop=4
set writebackup
set nobackup
set nocindent
set nosmartindent
set autoindent
"set indentkeys=

" Text look & feel
set nowrap
set number

" Nagivation in text buffer
set iskeyword-=:        " lets to jump around Some::Thing expressions with w/b
inoremap <S-Tab> <C-d>

" Plugins configuration
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <Tab> <C-w>w

language english


" Configuration by extension is done like this:
"autocmd BufNewFile,BufRead *.cl set filetype=c

" Configuration by FileType is done like this:
"autocmd FileType perl,c,cpp,autoit set indentkeys=

