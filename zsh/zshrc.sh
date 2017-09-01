export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

alias c=clear
alias r="source ~/.zshrc"
alias home=~/
alias desktop=~/Desktop

# Hook into cd, show all files on cd.
chpwd() {
  ls
}

server() {
  open http://localhost:8000
  python -m SimpleHTTPServer
}

gr () {
  if [[ -z $1 ]] then
    echo "usage: gr \"commit message\""
  else
    git add .
    git commit -m $1
    git push origin master
  fi
}

gc () {
  if [[ -z $1 ]] then
    echo "usage: gc git@github.com:username/project.git"
  else
    cd ~/Desktop
    git clone $1
    cd $(basename -s .git $1)
    code .
  fi
}

dp () {
  if [[ -z $1 ]] then
    echo "usage: dp project-name"
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    code .
  fi
}

np() {
  if [[ -z $1 ]] then
    echo "usage: np project-name"
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    yarn init -y
    touch index.js
    code .
  fi
}