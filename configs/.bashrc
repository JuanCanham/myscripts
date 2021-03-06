alias mark="echo ============================================================================================================================================================================================================================================================="

HISTSIZE=50000
HISTFILESIZE=100000
HISTIGNORE="&:[ ]*:exit"
shopt -s histappend
PROMPT_COMMAND="history -a"

alias gitc='git log --oneline --abbrev-commit --all --graph --decorate --color'

for x in ~/.completion/*; do . $x ; done
for x in ~/.profile/*; do . $x ; done

PS1="\!:\w [\$?]\[$(tput sgr0)\]\[\033[38;5;2m\]\\$\[$(tput sgr0)\]"

function tw2 () { kwrite "$@" &>/dev/null & }
function twn () { kate -n "$@" &>/dev/null & }
function tw () {
	for f; do
		if [ -d $f ] ; then
			echo "$f is a folder"
			tw $f/*
		else
			echo "opening $f"
			kate $f &>/dev/null &
		fi
	done
}
alias wrx='while read x ; do '

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.rvm/bin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
source /usr/local/etc/bash_completion.d/password-store
