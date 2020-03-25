if exists("b:current_syntax")
finish
endif 
syn case match
runtime syntax/tex.vim
unlet! b:current_syntax
syn cluster texMatchGroup add=@rnoweb
syn cluster texMathMatchGroup add=rnowebSexpr
syn cluster texMathZoneGroup add=rnowebSexpr
syn cluster texEnvGroup add=@rnoweb
syn cluster texFoldGroup add=@rnoweb
syn cluster texDocGroup add=@rnoweb
syn cluster texPartGroup add=@rnoweb
syn cluster texChapterGroup add=@rnoweb
syn cluster texSectionGroup add=@rnoweb
syn cluster texSubSectionGroup add=@rnoweb
syn cluster texSubSubSectionGroup add=@rnoweb
syn cluster texParaGroup add=@rnoweb
syn include @rnowebR syntax/r.vim
syn region rnowebChunk matchgroup=rnowebDelimiter start="^<<.*>>=" matchgroup=rnowebDelimiter end="^@" contains=@rnowebR,rnowebChunkReference,rnowebChunk fold keepend
syn match rnowebChunkReference "^<<.*>>$" contained
syn region rnowebSexpr matchgroup=Delimiter start="\\Sexpr{" matchgroup=Delimiter end="}" contains=@rnowebR contained
syn region rnowebSweaveopts matchgroup=Delimiter start="\\SweaveOpts{" matchgroup=Delimiter end="}"
syn cluster rnoweb contains=rnowebChunk,rnowebChunkReference,rnowebDelimiter,rnowebSexpr,rnowebSweaveopts
hi def link rnowebDelimiter	Delimiter
hi def link rnowebSweaveOpts Statement
hi def link rnowebChunkReference Delimiter
let   b:current_syntax = "rnoweb"