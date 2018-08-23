# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh ${colorflag}'

alias www='cd /Library/WebServer/Documents/'
alias bashp='nano /Users/gabrielvasile/.bash_profile'
alias bashr='. ~/.bash_profile'
alias vhosts='nano /etc/apache2/extra/httpd-vhosts.conf'
alias hosts='nano /private/etc/hosts'
alias ini='nano /etc/php.ini'
alias httpd='nano /etc/apache2/httpd.conf'
export PATH=/usr/local/bin:/usr/local/mysql/bin:/usr/local/mysql/support-files/:~/.composer/vendor/bin:$PATH
alias path='echo -e ${PATH//:/\\n}' # echo PATH in a nice format

# List files after changing directory
function cd() {
	builtin cd ${1:-$HOME} && ls;
}

# Make Directory and CD into it
function md () {
	mkdir -p "$@" && eval cd "\"\$$#\"";
}

# Easier navigation:
alias ~="cd ~" # `cd` is probably faster to type though
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias 1="cd -"
alias 2="cd -2"
alias 3="cd -2"
alias 4="cd -4"
alias 5="cd -5"
alias 6="cd -6"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

alias python=python3
