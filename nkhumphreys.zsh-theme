PROMPT=$'%{$fg_bold[green]%}%n%{$fg[blue]%} @ %{$fg_bold[cyan]%}%m %{$reset_color%}in %{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info)\
%{$fg_bold[red]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
echo '->'
}
