export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh
alias server="python -m SimpleHTTPServer"

gc () {
  git add .
  git commit -m $1
  git push origin master
}