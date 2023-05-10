PROMPT='[%{$fg_bold[white]%}%n%{$reset_color%}@%{$%B$FG[129]%}%m%{$reset_color%} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)%{$reset_color%}]⚡ '

ZSH_THEME_GIT_PROMPT_PREFIX="(%{%B$FG[183]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
