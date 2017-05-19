parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PATH="/usr/local/bin:$PATH"
# export PS1="\h:\W \[\e[31m\]\u\[\e[m\]\\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\h:\W \[\e[31m\]\u\[\e[m\]\\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
