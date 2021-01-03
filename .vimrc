" check if your vim version supports it
if has('persistent_undo')

    " check if ~/.vim/undo dir doesn't exists
	if empty(glob("~/.vim/undo"))
        " if it doesn't exist, create it
		silent !mkdir -p ~/.vim/undo
	endif

    " turn on the feature
	set undofile

    " directory where the undo files will be stored
	set undodir=$HOME/.vim/undo
endif

" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
" The width of a TAB is set to 4.
set tabstop=4

" Indents will have a width of 4
set shiftwidth=4

" Sets the number of columns for a TAB
set softtabstop=4

" Expand TABs to spaces
set expandtab

set clipboard=unnamed
set clipboard=unnamedplus

" no line wrapping
set nowrap

" line numbers
set number

" syntax highlighting
filetype plugin on
syntax on

" allow backspace for old text
set backspace=indent,eol,start

