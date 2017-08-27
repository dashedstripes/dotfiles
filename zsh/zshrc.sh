export ZSH=/Users/adam/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

server() {
  open http://localhost:8000
  python -m SimpleHTTPServer
}

ga () {
  if [[ -z $1 ]] then
    echo '
  USAGE:

  ga "Your commit message"

  WHAT IT DOES:

  Commits changes locally.

  $ git add .
  $ git commit -m "Your commit message"
  '
  else
    git add .
    git commit -m $1
  fi
}

gr () {
  if [[ -z $1 ]] then
    echo '
  USAGE:

  gr "Your commit message"

  WHAT IT DOES:

  Commits changes and pushes to remote.

  $ git add .
  $ git commit -m "Your commit message"
  $ git push origin master
  '
  else
    git add .
    git commit -m $1
    git push origin master
  fi
}

gc () {
  if [[ -z $1 ]] then
    echo '
  USAGE:

  gc git@github.com:username/project.git

  WHAT IT DOES:

  Clones a repo to the desktop and opens it in vscode.

  $ cd ~/Desktop
  $ git clone git@github.com:username/project.git
  $ cd $(basename -s .git $1)
  $ code .
  '
  else
    cd ~/Desktop
    git clone $1
    cd $(basename -s .git $1)
    code .
  fi
}

dp () {
  if [[ -z $1 ]] then
    echo '
  USAGE:

  dp project-name

  WHAT IT DOES:

  Creates a new blank project on the Desktop.

  $ cd ~/Desktop
  $ mkdir project-name
  $ cd project-name
  $ code .
  '
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    code .
  fi
}

np() {
  if [[ -z $1 ]] then
    echo '
  USAGE:

  np project-name

  WHAT IT DOES:

  Sets up a new NodeJS project on the Desktop.

  $ cd ~/Desktop
  $ mkdir project-name
  $ cd project-name
  $ yarn init -y
  $ touch index.js
  $ code .
  '
  else
    cd ~/Desktop
    mkdir $1
    cd $1
    yarn init -y
    touch index.js
    code .
  fi
}

alias reload="source ~/.zshrc"