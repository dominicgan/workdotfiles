# git aliases
alias gg="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcam="git commit --amend"
alias gb="git branch"
alias gbas="git branch --all | grep -i"
alias gbn="git checkout -b"
alias gbnp="git push origin --set-upstream"
alias gco="git checkout"
alias gpush="git push origin"
alias gpull="git pull origin"
alias gst="git stash"
alias gri="git rebase -i"
alias gcp="git cherry-pick"
# ls aliases
# alias ls="ls -CF"
# alias ll="ls -lHA"
# alias la="ls -la"
alias ls="ls -CF"
alias ll="ls -lHA"
alias la="ls -la"

alias exaz="exa -1s extension --group-directories-first"
alias exaa="exa -as extension --group-directories-first"
alias exal="exa -las extension --group-directories-first"

# quick rewriting pref files
alias sourcebash='source ~/.bash_profile'
alias ipaddress='ifconfig | grep -v "127.0.0.1" | grep -v "inet6" | grep -o "inet.*" | cut -f1- -d:'
alias basaliases='vim ~/.bash_aliases'

# prm plugin
alias prm=". ~/prm/prm.sh"

# windows clear alias
alias cls='clear'

alias tmux="TERM=screen-256color-bce tmux"

# catalina
alias tomcat=catalina

# thefuck setup
eval $(thefuck --alias)

# kill pid
alias kilt="kill -9"

# all the functions!!

# Shortcut function to control Apache Tomcat Catalina script:
catalina() {
  # Long-hand version:
  # Start:
  # $CATALINA_HOME/bin/startup.sh
  # ... or:
  # $CATALINA_HOME/bin/catalina.sh start
  # Stop:
  # $CATALINA_HOME/bin/shutdown.sh
  # ... or:
  # $CATALINA_HOME/bin/catalina.sh stop
  # See .bash_aliases for related alias.
  # if [ -z $1 ]; then
  #   OPTION=start
  # else
  #   OPTION=$1
  # fi
  # $CATALINA_HOME/bin/catalina.sh OPTION
  $CATALINA_HOME/bin/catalina.sh $1
}


# download new pathogen package
# basically a git clone wrapper for vim plugin folder
function tpm_get() {
  cd ~/.tmux/plugins;
  git clone $1;
  echo -e "\033[30;43mTmux Plugins\033[0m ";
  ls;
  cd -;
}

# download new pathogen package
# basically a git clone wrapper for vim plugin folder
function pathogen_get() {
  cd ~/.vim/bundle;
  git clone $1;
  echo -e "\033[30;43mVim Plugins\033[0m ";
  ls;
  cd -;
}

# test if term outputs color
function testcolor() {
  echo -e "\033[30;43mhola\033[0m ";
  echo -e "\033[30;45mørbo\033[0m ";
}

# display all vim plugins
function vimplugins() {
  cd ~/.vim/bundle;
  echo -e "\033[30;43mVim Plugins\033[0m ";
  ls;
  cd -;
}

# remove installed vim plugins
# and display remaining after deletion
function vimpluginsrm() {
  cd ~/.vim/bundle;
  rm -rf $1;
  echo -e "\033[30;43mVim Plugins\033[0m ";
  ls;
  cd -;
}

# quick preference editor
# basically just a quick editor of whatever files
# are in home dir lmao
function prefedit() {
  vim ~/$1;
}

# show all available preference files for editing
function prefls() {
  ls -a ~ | grep "^\."
}

# list all available color-script options
# to print out fancy ascii term art
function colorscriptls() {
  echo -e "\033[30;43mColor Scripts\033[0m ";
  ls ~/workspace/playground/color-scripts/color-scripts;
}

# print out fancy ascii term art
function colorscript() {
  ~/workspace/playground/color-scripts/color-scripts/$1;
}

# mkdir and cd into newly made dir
# srsly this shouldn't have to be custom made guys..
function mkcd {
  if [ ! -n "$1" ]; then
	echo "Enter a directory name, mate"
  elif [ -d $1 ]; then
    echo "\`$1' already exists, guy"
  else
    mkdir $1 && cd $1
  fi
}

# cd to project root
function cdp {
	cd $(git rev-parse --show-toplevel)
}

# see used port
function usedport {
	lsof -i :$1
}


