syntax enable
colorscheme desert

" Load plugins with Pathogen
execute pathogen#infect()
execute pathogen#helptags()

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
set formatoptions+=ro
set backspace=indent,eol,start
set encoding=utf-8
set ruler
language english
"set indentkeys=

" Text look & feel
set number
set hlsearch

" Nagivation in text buffer
set iskeyword-=:        " lets to jump around Some::Thing expressions with w/b
inoremap <S-Tab> <C-d>

" File types detection
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufRead *.petc set filetype=petc

autocmd FileType petc set colorcolumn=121

" Omni completion configuration
set completeopt=longest,menuone
inoremap <C-Space> <C-X><C-O>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"      " select popup menu with Enter
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<Tab>"     " select popup menu with Tab

" Cyrillics lmaps setting
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set spelllang=ru_yo,en_us

" Plugins configuration
"""""""""""""""""""""""""

" NERDTreeTabs
nnoremap <F4> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 0
nnoremap <Tab> <C-w>w


" Configuration by extension is done like this:
"autocmd BufNewFile,BufRead *.cl set filetype=c

" Configuration by FileType is done like this:
"autocmd FileType perl,c,cpp,autoit set indentkeys=

