#This file is for my custom bash prompts

parse_git_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

RED="\[\033[0;31m\]"
NOCOLOR="\e[0m"

PS1="\W$RED \$(parse_git_branch)$NOCOLOR \$ "
