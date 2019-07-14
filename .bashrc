#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

complete -cf sudo # Tab complete for sudo

# shopt options
shopt -s cdspell # This will correct minor spelling errors in a cd command.
shopt -s histappend # Append to history rather than overwrite
shopt -s checkwinsize # Check window after each command
shopt -s dotglob # files beginning with . to be returned in the results of path-name expansion.

# set options
set -o noclobber # prevent overwriting files with cat
set -o ignoreeof # stops ctrl+d from logging me out

export LANG="en_US.UTF-8"

# Prompt
# PS1="\u@\h:\w$ "
PS1="$ "