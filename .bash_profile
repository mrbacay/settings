[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# GET CURRENT BRANCH IN GIT REPO
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# GET CURRENT STATUS OF GIT REPO
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

# Customize command line
export PS1="\[\e[38;5;43m\]\h\[\e[m\]\[\e[38;5;19m\]\W\[\e[m\]\[\e[38;5;57m\]\`parse_git_branch\`\[\e[m\]\n\[\e[38;5;44m\]\$(date +%H:%M:%S)\[\e[38;5;19m\] ➽ \[\e[38;5;0m\]"

# Use Vim as default editor
export EDITOR='vim'

# Console command correction
eval "$(thefuck --alias)"

# tmuxinator completion
source ~/.rvm/gems/ruby-2.2.2/gems/tmuxinator-0.9.0/bin/tmuxinator.bash
