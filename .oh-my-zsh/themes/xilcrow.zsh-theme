# Fork of robbyrussell default theme.
# Changed colors, prompt symbols and added time.
# Btw the name is pilcrow ¶ + silcrow § = xilcrow.

PROMPT="%(?:%{$fg_bold[green]%}¶:%{$fg_bold[red]%}¶)"
PROMPT+=' %F{magenta}%*%f'
PROMPT+=' [ %{$fg[cyan]%}%c%{$reset_color%} ] $(git_prompt_info)'
PROMPT+=$'\n§ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

