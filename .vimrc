if has('persistent_undo')                    " check if your vim version supports it
	if empty(glob("~/.vim/undo"))        " check if ~/.vim/undo dir nt exists
		" echom "~/.vim/undo doesn't exist, creating it..."
		silent !mkdir -p ~/.vim/undo " if it doesn't exist, create it
	else
		" echom "~/.vim/undo exists"
		" can access echom with :messages.
	endif

	set undofile                  " turn on the feature
	set undodir=$HOME/.vim/undo   " directory where the undo files will be stored
endif
