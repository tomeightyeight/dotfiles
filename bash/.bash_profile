# .bash_profile
export EDITOR=nano

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=/home/tom/.composer/vendor/bin:$PATH

export PATH

ssh-agent sh -c 'ssh-add < /dev/null && bash'
