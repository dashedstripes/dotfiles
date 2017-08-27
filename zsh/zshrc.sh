export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh
alias server="python -m SimpleHTTPServer"

gc () {
  if [[ -z $1 ]] then
    echo "You must provide a commit message."
  else
    git add .
    git commit -m $1
    git push origin master
  fi
}