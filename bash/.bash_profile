# .bash_profile

# editor
export EDITOR=nano

# git prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# aliases
alias ungron='gron --ungron'
alias gitlog='git log --oneline --decorate'
alias mouseon='tmux setw -g mouse on'
alias mouseoff='tmux setw -g mouse off'
alias td='tmux detach'
alias ta='tmux attach'
alias vi='vim'
alias df='df -h'

# user specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH=~/.composer/vendor/bin:$PATH

export PATH

