export ZSH=${HOME}/.oh-my-zsh
export GIT_EDITOR=nvim

ZSH_THEME="robbyrussell"
plugins=(git vi-mode kubectl docker docker-compose zsh-kubectl-prompt)

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile

COMPOSER_MEMORY_LIMIT=-1

alias c=clear
alias r="source ~/.zshrc"
alias home=~/

alias drush="docker-compose exec php drush"
alias kgcc="kubectl get pods | grep cloud-command | cut -d' ' -f1"
alias klf="kubectl logs -f --tail=10"

alias compi='composer install --ignore-platform-reqs'
alias compr='composer require --ignore-platform-reqs'
alias compu='composer update --ignore-platform-reqs'

alias yr="yarn --cwd next run lint"

unalias gr
unalias gf

gr() {
  git commit -m "refactor(${1}): ${2}";
}

# Display current kubectl context https://github.com/superbrothers/zsh-kubectl-prompt
autoload -U colors; colors
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
