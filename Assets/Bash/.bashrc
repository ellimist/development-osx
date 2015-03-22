# we want the various sbins on the path along with /usr/local/bin
PATH="$PATH:/usr/local/sbin:/usr/sbin:/sbin"
PATH="/usr/local/bin:$PATH"

# put ~/bin on PATH if you have it
test -d "$HOME/bin" &&
PATH="$HOME/bin:$PATH"

# tools
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# databases
alias psql_start="postgres -D /usr/local/var/postgres"
alias mongo_start="mongod --config /usr/local/etc/mongod.conf"

# filesystem
alias ..="cd .."         # Go up one directory
alias ...="cd ../.."     # Go up two directories
alias ....="cd ../../.." # Go up three directories
alias -- -="cd -"        # Go back
alias l="ls"
alias ll="ls -Alh"
alias fn="find . -name"
alias hi="history | tail -20"

# shortcuts
alias d="cd ~/Dropbox"
alias reload="source ~/.bashrc && echo 'Done!'"
alias ps="python -m SimpleHTTPServer 4000"
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bashrc'

## Switch repos
DIR=~/Documents/projects
alias h='cd ~/'
alias w='cd ${DIR}'

# applications
alias s.="subl ."
alias s="subl"
alias a.="atom ."
alias a="atom"

# git
alias g="git"
alias ga="git add"
alias gau='git add -u'
alias gl="git log"
alias gs="git status"
alias gss="git status --short"
alias gd="git diff"
alias gds="git diff --staged"
alias gdt="git difftool"
alias gdts="git difftool --staged"
alias gm="git commit -m"
alias gma="git commit -am"
alias gb="git branch"
alias gc="git checkout"
alias gra="git remote add"
alias grr="git remote rm"
alias gpu="git pull"
alias grh="git reset HEAD"
alias undo="git reset --soft HEAD^"
alias gup="git up"

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

function prt() {
  if [ -z "$1" ]; then
    echo "Usage: prt [text]";
  fi
  echo "$1"
}

function chrome() {
  open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "$1"
}

function gcommit() {
  gs
  gup
  ga --all
  gm "$1"
  read -r -p "Do you want to push to origin? [y/N] " response
  response=${response,,}
  if [[ $response =~ ^(yes|y)$ ]]
  then
    git push
    git status
  else
    prt Aborted!
  fi
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

export PS1='\[\033[0;36m\]\w \[\033[0;31m\]$(parse_git_branch)\[\033[0m\]$ '

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash  ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Adding npm
export PATH=$PATH:/usr/local/share/npm/bin

source ~/.jump
