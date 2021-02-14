export ZSH=${HOME}/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git vi-mode kubectl docker docker-compose)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

COMPOSER_MEMORY_LIMIT=-1

alias minecraft='gcloud beta compute ssh --zone "us-east1-b" "minecraft-server" --project "pateo-304720"'
alias c=clear
alias r="source ~/.zshrc"
alias home=~/
alias des=~/Desktop
alias dow=~/Downloads
alias doc=~/Documents
alias one=~/OneDrive
alias cod=~/code
alias dot=~/.dotfiles
alias fav=~/code/favish
alias per=~/code/personal

alias drush="docker-compose exec php drush"
alias kgcc="kubectl get pods  | grep cloud-command | cut -d' ' -f1"
alias klf="kubectl logs -f --tail=10"

alias compi='composer install --ignore-platform-reqs'
alias compr='composer require --ignore-platform-reqs'
alias compu='composer update --ignore-platform-reqs'

alias yr="yarn --cwd next run lint"

# Hook into cd, show all files on cd.
chpwd() {
  ls
}

# Google Search
gs() {
  open "https://www.google.com/search?q=$1"
}

# Youtube Search
you() {
  open "https://www.youtube.com/results?search_query=$1"
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

# Display current kubectl context https://github.com/superbrothers/zsh-kubectl-prompt
autoload -U colors; colors
source /usr/local/etc/zsh-kubectl-prompt/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
