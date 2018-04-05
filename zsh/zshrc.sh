export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

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

# Git Functions
gr() {
  if [[ -z $1 ]] then
    echo "usage: gr \"commit message\""
  else
    git add .
    git commit -m $1
    git push
  fi
}

gac() {
  if [[ -z $1 ]] then
    echo "usage: gac \"commit message\""
  else
    git add .
    git commit -m $1
  fi
}

gp() {
  git push origin master
}

gc() {
  if [[ -z $1 ]] then
    echo "usage: gc git@github.com:username/project.git"
  else
    cd ~/Desktop
    git clone $1
    cd $(basename -s .git $1)
    code .
  fi
}

# Creating new projects
dp() {
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

# Encrypting and decrypting folders
encrypt() {
  tar -cf $1.dir $1
  openssl aes-256-cbc -in $1.dir -out $1.aes
  rm $1.dir
}

decrypt() {
  openssl aes-256-cbc -d -in $1.aes -out $1.dir
  tar -xf $1.dir
  rm $1.dir $1.aes
}

# Docker commands

dockerstopall() {
  docker stop $(docker ps -aq)
}

dockerremovecontainers() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
}

dockerremoveimages() {
  docker rmi $(docker images -q)
}