#This file is for my custom bash prompts

parse_git_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

PS1="\w \$(parse_git_branch)\$ "
