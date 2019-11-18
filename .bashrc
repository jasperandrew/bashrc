# ~/.bashrc: executed by bash(1) for non-login shells.


# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories.
shopt -s globstar

TITLE='\[\e]0; \w\a\]'
parse_git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
TIME='\n\[\033[01;31m\]\t '
LOCATION='\[\033[01;34m\]\W '
BRANCH='\[\033[00;33m\]$(parse_git_branch)\[\033[00m\]\n> '
PS1=$TITLE$TIME$LOCATION$BRANCH

export CVSROOT=:pserver:andrewj@blizzard.partech.com:/usr/local/cvs/repository
export JAVA_HOME=/usr/lib/jvm/adoptopenjdk-12-hotspot-amd64/
export H=/mnt/c/Users/andrewj
export PJ=$H/Projects
export GH=$H/Github

alias l='ls -1AF'
alias ll='ls -AFgo'
alias lr='ls -1AFR'
alias ffox="firefox.exe $1 $2 $3 $4 $5 $6 $7"
alias cmd="cmd.exe /c $1"
