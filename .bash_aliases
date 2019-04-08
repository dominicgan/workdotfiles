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
alias ls="ls -CF"
alias ll="ls -lhA"
alias la="ls -lha"

alias exaz="exa -1s extension --group-directories-first"
alias exaa="exa -as extension --group-directories-first"
alias exal="exa -las extension --group-directories-first"

# quick rewriting pref files
alias sourcebash='source ~/.bash_profile'
alias ipaddress=$'ifconfig | grep -v "127.0.0.1" | grep -v "inet6" | grep -o "inet.*" | cut -f1- -d: | awk \'BEGIN {FS="netmask"}; {print $1}\' | awk \'BEGIN {FS="inet "}; {print $2}\''
alias extipaddress=$'ifconfig | grep -v "127.0.0.1" | grep -v "inet6" | grep -o "inet.*" | cut -f1- -d: | awk \'BEGIN {FS="netmask"}; {print $2}\' | awk \'BEGIN {FS="broadcast "}; {print $2}\''
alias basaliases='vim ~/.bash_aliases'
alias basscripts='vim ~/.bash_scripts'

# prm plugin
alias prm=". ~/prm/prm.sh"

# windows clear alias
alias cls='clear'

alias macvim='mvim'

alias tmux="TERM=screen-256color-bce tmux"

# catalina
alias tomcat=catalina

# thefuck setup
eval $(thefuck --alias)

# kill pid
alias kilt="kill -9"

# sketch tool
alias sketchtool="/Applications/Sketch.app/Contents/Resources/sketchtool/bin/sketchtool"


