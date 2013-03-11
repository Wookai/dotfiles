# get script real directory for sourcing private aliases
SCRIPTFILE=$0
if [ "${SCRIPTFILE}" = "bash" ] || [ "${SCRIPTFILE}" = "-bash" ] ;
then
    SCRIPTFILE=${BASH_ARGV[0]}
fi
SCRIPTPATH=`realpath $SCRIPTFILE`
SCRIPTDIR=`dirname $SCRIPTPATH`

# colorized commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# custom ls
alias ll='ls -alh'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ff:  to find a file under the current directory
ff () { /usr/bin/find . -name "$@" ; }
# # ffs: to find a file whose name starts with a given string
ffs () { /usr/bin/find . -name "$@"'*' ; }
# # ffe: to find a file whose name ends with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }

# svn helpers
alias svnaddnew='svn status | grep ? | awk "{print $2}"'

# include 'private' aliases if file exists
PRIVATEFILE="$SCRIPTDIR/bash_aliases.private"
if [ -f $PRIVATEFILE ];
then
    source "$SCRIPTDIR/bash_aliases.private"
fi
