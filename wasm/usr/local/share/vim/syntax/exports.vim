if exists("b:current_syntax")
finish
endif
syn keyword exportsKeyOptions contained	alldirs	nohide	ro	wsync
syn keyword exportsKeyOptions contained	kerb	o	rw
syn match exportsOptError contained	"[a-z]\+"
syn keyword exportsKeySettings contained	access	anon	root	rw
syn match exportsSetError contained	"[a-z]\+"
syn keyword exportsKeyOptSet contained	mapall	maproot	mask	network
syn match exportsOptSetError contained	"[a-z]\+"
syn match exportsSettings	"[a-z]\+="  contains=exportsKeySettings,exportsSetError
syn match exportsOptions	"-[a-z]\+"  contains=exportsKeyOptions,exportsOptError
syn match exportsOptSet	"-[a-z]\+=" contains=exportsKeyOptSet,exportsOptSetError
syn match exportsSeparator	"[,:]"
syn match exportsComment	"^\s*#.*$"	contains=@Spell
if !exists("skip_exports_syntax_inits")
hi def link exportsKeyOptSet	exportsKeySettings
hi def link exportsOptSet	exportsSettings
hi def link exportsComment	Comment
hi def link exportsKeyOptions	Type
hi def link exportsKeySettings	Keyword
hi def link exportsOptions	Constant
hi def link exportsSeparator	Constant
hi def link exportsSettings	Constant
hi def link exportsOptError	Error
hi def link exportsOptSetError	Error
hi def link exportsSetError	Error
endif
let b:current_syntax = "exports"
