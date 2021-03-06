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

# show colored outputs correctly in less
alias less='less -r'

# trim image
trim() {
for var in "$@"
do
    /usr/bin/convert $var -trim $var;
done }

# svn helpers
alias svnaddnew='svn status | grep ? | awk "{print \$2}" | xargs svn add'
alias svnrmmissing='svn status | grep ! | awk "{print \$2}" | xargs svn rm'


# git helpers
alias gitaddnew='git status -s | grep ?? | awk "{print \$2}" | xargs git add'

# include 'private' aliases if file exists
PRIVATEFILE="$HOME/.bash_aliases_private"
if [ -f $PRIVATEFILE ];
then
    source $PRIVATEFILE
fi
