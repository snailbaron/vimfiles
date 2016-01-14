" Vim syntax file
" Language: PETool configuration file

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" PETool Configs are case-sensitive
syn case match

" Syntax elements

syn keyword petcKeyword STRUCT FIELD OF
syn keyword petcType ENUM UINT TIME FLAG CHAR
syn match petcName /[a-zA-Z0-9_+]\+/
syn match petcDelim /[,|()]/
syn match petcNumber /[0-9]\+/
syn region petcDescription start=/\[/ end=/\]/ contains=petcDescriptionText
syn match petcDescriptionText /[^\[\]]*/ contained
syn match petcComment /#.*$/

"syn region petcTable start=/^\s*-\+\s*$/ end=/^\s*-\+\s*$/ contains=petcFieldDelim,petcSize,petcType,petcName,petcDescription
"syn match petcFieldDelim /|/ contained
"syn keyword petcType ENUM UINT TIME FLAG CHAR contained
"syn match petcSize /[0-9]\+/ contained
"syn region petcDescription start=/\[/ end=/\]/ contained

hi link petcKeyword Keyword
hi link petcName Identifier
hi link petcDelim Delimiter
hi link petcNumber Number
hi link petcType Type
hi link petcDescription Delimiter
hi link petcDescriptionText String
hi link petcComment Comment

"hi link petcTable Delimiter
"hi link petcFieldDelim Delimiter
"hi link petcType Type
"hi link petcName Identifier
"hi link petcSize Number
"hi link petcDescription String

" Define current syntax as PETool Config
let b:current_syntax = "petc"

