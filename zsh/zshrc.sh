export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git vi-mode kubectl docker docker-compose)

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
alias fav=~/Favish

alias drush="docker-compose exec php drush"

# Hook into cd, show all files on cd.
chpwd() {
  ls
}

# Git Functions
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