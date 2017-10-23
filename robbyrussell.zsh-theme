PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)$(check_git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
RPROMPT='$(git_prompt_short_sha)'
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"



ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg_bold[red]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg_bold[red]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg_bold[red]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg_bold[red]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$fg_bold[red]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED=" %{$fg_bold[red]%}↕%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg_bold[red]%}✭%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg_bold[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg_bold[red]%}➜%{$reset_color%}"

# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo " %{$fg_bold[red]%}➦{$reset_color%})"
        else
            echo "$(git_prompt_status)"
        fi
    fi
}
