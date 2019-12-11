# globbing is case insensitive
setopt NO_CASE_GLOB

# auto change directory
setopt AUTO_CD

# corrections when things are mistyped
setopt CORRECT
setopt CORRECT_ALL

# make sure ocaml works fine
eval `opam config env`

# set up of the prompt
setopt PROMPT_SUBST

git_branch() {
    git symbolic-ref --short HEAD 2> /dev/null
}
on_if_in_git() {
    [[ -n $(git symbolic-ref --short HEAD 2> /dev/null) ]] && echo " on "
}
NEWLINE=$'\n'

PROMPT='┌─ %F{9}%T%f in %F{190}%~%f$(on_if_in_git)%F{141}$(parse_git_branch)%f ─╼${NEWLINE}└╼ '