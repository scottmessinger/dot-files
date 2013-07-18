export PATH=/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/Users/ScottMessinger/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/ScottMessinger/.rvm/bin:/usr/local/share/npm/bin:/usr/local/share/python

if [[ -s /Users/ScottMessinger/.rvm/scripts/rvm ]] ; then source /Users/ScottMessinger/.rvm/scripts/rvm ; fi

alias st="git status"
alias br="git branch -v"
alias co="git checkout"
alias add="git add"
alias ts="terminitor start"
alias tsh="terminitor start hlavka"
alias folio="consular start folio"
chrome(){
  open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome "$1"
}

export EDITOR=/usr/local/bin/mvim
export GIT_EDITOR='/usr/local/bin/mvim -f'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
