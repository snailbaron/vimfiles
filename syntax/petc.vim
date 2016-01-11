" Vim syntax file
" Language: PETool configuration file

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" PETool Configs are case-sensitive
syn case match

" Syntax elements
syn match   petcTableDelim /^\s*-\+\s*$/
syn match   petcNumber     /\<\(0x\x\+\|\d\+\)\>/
syn keyword petcType       ENUM UINT TIME FLAG CHAR
syn match   petcComment    /#.*$/
syn match   petcTableName  /^\s*\[\zs[A-Za-z0-9+:, ]\+\ze\]/
syn match   petcDelim      /[|:]/

" Default highlighting
hi link petcTableDelim Delimiter
hi link petcDelim      Delimiter
hi link petcNumber     Number
hi link petcType       Type
hi link petcComment    Comment
hi link petcTableName  Identifier

" Define current syntax as PETool Config
let b:current_syntax = "petc"

