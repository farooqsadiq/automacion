if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# # Setting PATH for Python 2.7
# # The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

if [ -f ~/.git-completion.bash ]; then
	echo "sourcing git-completion script"
	. ~/.git-completion.bash
fi
