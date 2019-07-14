# File: ~/bash_aliases
# Desc: Definition of some useful aliases for the bash

# Some common shortcuts for file-/directory commands
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -lAhFtr --color=auto'
alias lla='ls -la --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'

# Some common shortcuts for tools
alias j='jobs'
alias v='vim'
alias c='code'
alias gvim='gvim -X -geom 100x55'
alias g='gvim'
alias ric='ri -f ansi'

# Aliases for git
alias git='git --no-pager'
alias gs='git status'
alias gb='git branch -a --color'
alias gd='git diff --color'
alias gc='git commit'
alias ga='git add'
alias gl='git log --pretty=oneline'
alias gps='git push'
alias gpl='git pull'
alias gco='git checkout'
alias grm='git rm'
alias gmv='git mv'

# Aliases for common chmods
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'

# Aliases for software managment
alias pacman='sudo pacman'
alias update='sudo pacman -Syu'

# Execute the last command as root
alias lr='sudo $(history | tail -n 2 | head -n 1 | sed -e "s/^[ ]*[0-9]*[ ]*//g")'

# Search for a process containing a given name
function pps() {
ps aux | grep "$@" | grep -v 'grep';
}