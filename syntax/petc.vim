" Vim syntax file
" Language: PETool configuration file

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" PETool Configs are case-sensitive
syn case match

" Syntax elements

" Specification with table name and/or variations
syn region  petcSpec       start=/\[/ end=/\]/ contains=petcSpecName
syn match   petcSpecName   /[a-zA-Z0-9_+]*/ contained

" Table delimiter
syn match   petcTableDelim /^\s*-\+\s*$/

syn match   petcNumber     /\<\(0x\x\+\|\d\+\)\>/
syn keyword petcType       ENUM UINT TIME FLAG CHAR
syn match   petcComment    /#.*$/
syn match   petcDelim      /[|:]/

" Last column in table, contains description
syn match petcLast /|[^|]*$/ contains=petcLastDelim
syn match petcLastDelim /|/ contained

syn match petcDescrContinue /^\s\+[^ |\[][^|]*$/

" Default highlighting
hi link petcTableDelim Delimiter
hi link petcNumber     Number
hi link petcType       Type
hi link petcComment    Comment

hi link petcSpecName   Identifier
hi link petcSpec       Delimiter
hi link petcDelim      Delimiter

hi link petcDescrContinue String
hi link petcLast       String
hi link petcLastDelim  Delimiter

" Define current syntax as PETool Config
let b:current_syntax = "petc"

