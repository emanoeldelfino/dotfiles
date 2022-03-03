# Update packages
sudo apt update

# Install git
sudo apt install git-all

# Install zsh
sudo apt install zsh

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create .aliases
cat > ~/.aliases << EOF
alias v=vim

# Asks to confirm when
# deleting a bunch of files
# using wildcard star *
alias rm="rm -I"

EOF

# create .vimrc
cat > ~/.vimrc << EOF
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

" Set auto indentation
set autoindent
filetype plugin indent on
filetype indent on

:set visualbell

EOF

# create xilcrow theme
cat > ~/.oh-my-zsh/custom/themes/xilcrow.zsh-theme << EOF
# pilcrow ¶ + silcrow § = xilcrow.
# Fork of robbyrussell default theme.
# Changed colors, prompt symbols and added optional time.

PROMPT="%(?:%{$fg_bold[green]%}¶ :%{$fg_bold[red]%}¶ )"
# Uncomment following line to add time
# PROMPT+='%F{magenta}%*'
PROMPT+='%f[ %{$fg[cyan]%}%c%{$reset_color%} ] $(git_prompt_info)'
PROMPT+=$'\n§ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

EOF

# set xilcrow theme
sed -i 's/ZSH_THEME=.*/ZSH_THEME="xilcrow"/' ~/.zshrc

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# set plugins for oh my zsh
sed -i 's/plugins=.*/plugins=(git ssh-agent zsh-autosuggestions)' ~/.zshrc

# Install zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm



# append to .zshrc
echo "source $HOME/.aliases

path+=('~/bin')
export PATH

source ~/.zsh-nvm/zsh-nvm.plugin.zsh" >> ~/.zshrc

