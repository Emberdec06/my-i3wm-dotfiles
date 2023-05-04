"line number
set number

"compat to vim only
set nocompatible

" call vim plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
