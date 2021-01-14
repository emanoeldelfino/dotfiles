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

