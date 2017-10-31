# .bash_profile
export EDITOR=nano

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Load in the git branch prompt script.
#source ~/.git-prompt.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=~/.composer/vendor/bin:$PATH

export PATH

ssh-agent sh -c 'ssh-add < /dev/null && bash'
