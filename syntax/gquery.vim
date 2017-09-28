" Vim Syntax File
" Language: gquery
" Last Change: 2017 Sep 27

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case ignore


" Syntax definitions {{{1
" Basic Types {{{2
syn keyword gsqlBasicType int uint float double bool string
syn keyword gsqlAdvanceType compress datetime fixed_binary
syn keyword gsqlComplexType tuple list set map
syn keyword gsqlTopologyType vertex edge graph

" Accumulator Types {{{2
syn keyword gsqlAccumType OrAccum SumAccum MaxAccum MinAccum
syn keyword gsqlAccumType ListAccum MapAccum BagAccum SetAccum AvgAccum

" Logic keywords {{{2
syn keyword gsqlKeywords create query export job loading online_post insert into
syn keyword gsqlKeywords then end do return returns in done set
syn keyword gsqlTypedef typedef
syn keyword gsqlRepeat for while foreach
syn keyword gsqlCondition if when case else
syn keyword gsqlStatement select update delete insert
syn keyword gsqlKeywords values to load using run with drop from where type print
syn keyword gsqlAccumKeyword accum
syn match gsqlPostAccumKeyword "post-accum"
syn keyword gsqlStatement order by limit having

" Todo keywords {{{2
syn keyword gsqlTodo contained TODO FIXME XXX NOTE

" Other syntax {{{2
syn keyword gsqlBoolean true false
syn match cSpecialChar contained '\\[ntbf"\\]'

syn match gsqlComment  "#.*$" contains=gsqlTodo
syn match gsqlComment  "//.*$" contains=gsqlTodo
syn match gsqlOperator "\v\+\="
syn match gsqlOperator "\v\="
syn match gsqlOperator "\v!\="
syn match gsqlOperator "\v\>\="
syn match gsqlOperator "\v\>"
syn match gsqlOperator "\v\<"
syn match gsqlOperator "\v\@"
syn match gsqlEdge     "-("
syn match gsqlEdge     ")-[>]\?"
 
syn match gsqlNumber   '\<\d\+\>'
syn match gsqlNumber   '\<[-+]\d\+\>'
 
" Floating point number with decimal no E or e (+,-)
syn match gsqlNumber   '\<\d\+\.\d*\>'
syn match gsqlNumber   '\<[-+]\d\+\.\d*\>'
 
" Floating point like number with E and no decimal point (+,-)
syn match gsqlNumber   '\<[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+\>'
syn match gsqlNumber   '\<\d[[:digit:]]*[eE][\-+]\=\d\+\>'
 
" Floating point like number with E and decimal point (+,-)
syn match gsqlNumber   '\<[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'
syn match gsqlNumber   '\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'

syn region gsqlComment start="/\*" end="\*/" contains=gsqlTodo
syn region gsqlString start=+L\="+ skip=+\\"+ end=+"+ contains=cSpecialChar


hi def link gsqlTodo Todo
hi def link gsqlKeywords Keyword
hi def link gsqlTypedef Keyword
hi def link gsqlRepeat Keyword
hi def link gsqlCondition Keyword
hi def link gsqlStatement Keyword
hi def link gsqlBasicType Type
hi def link gsqlAdvanceType Type
hi def link gsqlComplexType Type
hi def link gsqlTopologyType Type
hi def link gsqlAccumType Type
hi def link gsqlComment Comment
hi def link gsqlString String
hi def link cSpecialChar Special
hi def link gsqlOperator Operator
hi def link gsqlEdge Operator
hi def link gsqlNumber Constant
hi def link gsqlBoolean Constant
hi def link gsqlPostAccumKeyword Keyword

let b:current_syntax = "gquery"
