# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
export LC_ALL=C

function cd {
        command cd $@;
		        if test -f ".nvmrc"; then nvm use; fi
		}

# Coloured man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

alias siteinstall='composer install; npm install;'
alias gitlog='git log --oneline --decorate'
alias mouseon='tmux setw -g mode-mouse on'
alias mouseoff='tmux setw -g mode-mouse off'
alias rebasedev='git pull origin develop --rebase'
alias td='tmux detach'
alias ta='tmux attach'
alias ls='ls $LS_OPTIONS -alh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias df='df -h'
alias update='yum update'
alias ping='grc ping'
alias mtr='grc mtr'
alias dig='grc dig'
alias netstat='grc netstat'
alias ps='grc ps'
alias tail='grc tail'
alias cat='grc cat'
alias bower='bower --allow-root'
alias artisan='php artisan'
alias gw='gulp; gulp watch --dev'
alias bw='boz compile sass -w'
alias grep='grep --color=auto'
