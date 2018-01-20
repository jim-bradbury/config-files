#
# Bash configurations
#

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# source ~/.bashrc.group
export PATH=$PATH:.
export PS1="\n\[\e[32m\]\@ \[\e[33m\]\w\[\e[0m\]\n\$ "
LS_COLORS='di=35'
export LS_COLORS


# Shell Options
#
# See man bash for more options...
#
# Use case-insensitive filename globbing
shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# Aliases
#
# Misc :)
alias less='less -r'                          # raw control characters
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..

if [ -n $OS ]
then
   if [ $OS == "Windows_NT" ]
   then
       source ~/.bashrc.work
   fi
fi


