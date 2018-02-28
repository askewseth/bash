#This file is for my custom bash prompts

parse_git_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

WHITE="\[\033[0;37m\]"
NOCOLOR="\e[0m"

fill="--- "
PS1='$fill \t\n'"\W$WHITE \$(parse_git_branch)$NOCOLOR \$ "

