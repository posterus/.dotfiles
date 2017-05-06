#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
No_color='\033[0m'
RED="\033[0;31m"
LBLUE="\033[1;34m"
LPURPLE="\033[1;36m"
LGREEN="\033[1;32m"
PS1="
[ \[$RED\] \d \[$LBLUE\]\t \[$No_color\] ]
[\[$LGREEN\]\u\[$No_color\]@\[$LPURPLE\]\h\[$No_color\] \W --> "

## Alias and costom functions

function cs() {
    cd "$@" && ls
}

alias tmux="tmux -f /home/cuso4/.config/tmux/tmux.conf"
## We all know  what this is
alias ..="cs .."
alias ...="cs ../.."
alias ....="cs ../../.."
alias .....="cs ../../../.."

alias v="nvim"


## We all know what this is
alias ll="ls -lv --group-directories-first"
alias la="ll -A"


## Printing all colors in basj
function bash_col() {
	for a in {30..47}
		do
		for b in {0..9}
			do
			printf "\033[${b};${a}m ${b};${a}m "
			done
		printf "\n"
		done

}
## Connect to ssh
alias taut="ssh -t -p 40 tautochrone.com tmux attach"

## Run my cool lab script
alias lab="~/scripts/LabReport/lab.sh"

alias please='sudo $(history -p !!)'
