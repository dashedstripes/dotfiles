export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

alias c=clear
alias r="source ~/.zshrc"
alias home=~/
alias des=~/Desktop
alias dow=~/Downloads
alias doc=~/Documents
alias one=~/OneDrive
alias cod=~/code
alias dot=~/.dotfiles

# Hook into cd, show all files on cd.
chpwd() {
  ls
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

# Generators

express-website() {
  if [[ -z $1 ]] then
    echo "usage: express-website project-name"
  else
    sh ~/.dotfiles/scripts/express-website.sh $1
  fi
}

# Docker

docker-stop-all() {
  docker stop $(docker ps -aq)
}

docker-remove-containers() {
  docker stop $(docker ps -aq)
  docker rm $(docker ps -aq)
}

docker-remove-images() {
  docker rmi $(docker images -q)
}

# Projects

project-xpense() {
  cd ~/code/xpense;
  code . &
  nodemon api/index.js &
  cd client && yarn start;
}

project-chat() {
  cd ~/code/chat;
  code . &
  nf start &
  open http://localhost:5100;
}

project-koan() {
  cd ~/code/koan;
  code . &
  nf start;
}

project-tymer() {
  cd ~/code/tymer;
  code . &
  nf start;
}