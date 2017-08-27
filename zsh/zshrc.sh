export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

server() {
  open http://localhost:8000
  python -m SimpleHTTPServer
}

# Git push to remote
gr () {
  if [[ -z $1 ]] then
    echo "You must provide a commit message."
  else
    git add .
    git commit -m $1
    git push origin master
  fi
}