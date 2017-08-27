export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

server() {
  open http://localhost:8000
  python -m SimpleHTTPServer
}

gr () {
  if [[ -z $1 ]] then
    echo "You must provide a commit message."
  else
    git add .
    git commit -m $1
    git push origin master
  fi
}

gc () {
  if [[ -z $1 ]] then
    echo "You must provide a clone uri."
  else
    cd ~/Desktop
    git clone $1
  fi
}

dp () {
  if [[ -z $1 ]] then
    echo "You must provide a project name."
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    code .
  fi
}

np() {
  if [[ -z $1 ]] then
    echo "You must provide a project name."
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    yarn init -y
    touch index.js
    code .
  fi
}