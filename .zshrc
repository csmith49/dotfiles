# set environments
eval $(/opt/homebrew/bin/brew shellenv)

# globbing is case insensitive
setopt NO_CASE_GLOB

# auto change directory
setopt AUTO_CD

# corrections when things are mistyped
setopt CORRECT
setopt CORRECT_ALL

# set up of the prompt
setopt PROMPT_SUBST

git_branch() {
    git symbolic-ref --short HEAD 2> /dev/null
}
on_if_in_git() {
    [[ -n $(git symbolic-ref --short HEAD 2> /dev/null) ]] && echo " on "
}
NEWLINE=$'\n'

PROMPT='┌─ %F{red}%T%f in %F{yellow}%~%f$(on_if_in_git)%F{green}$(git_branch)%f ─╼${NEWLINE}└╼ '

export PATH="/usr/local/opt/avr-gcc@7/bin:$PATH"
