# export TERM='xterm'

export VISUAL=vim
export EDITOR="$VISUAL"

# Set alias here
# alias vim='/c/Program\ Files\ \(x86\)/Vim/vim74/vim.exe'
# alias view='/c/Program\ Files\ \(x86\)/Vim/vim74/vim.exe -R'
# alias vimdiff='/c/Program\ Files\ \(x86\)/Vim/vim74/vim.exe -d'

alias gg="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias gs="git status"
alias ga="git add"
alias gc="git commit"

alias open="start"
alias bash_refresh='source ~/.bash_profile'
alias gvim='/c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe'
alias gvimdiff='/c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe -d'
alias gcvim='/c/Program\ Files\ \(x86\)/Vim/vim74/vim.exe'
alias apache_test='/c/wamp/bin/apache/apache2.4.9/bin/httpd.exe -t'

alias pathogen_get="cd ~/.vim/bundle && git clone"
alias dir_sahi="cd ~/sahi/userdata/scripts"
alias dir_wamp_log="cd /c/wamp/logs"
alias dir_iweb='cd /c/wamp/www/iweb'
alias dir_prodiweb='cd /c/wamp/www/iweb.production'
alias dir_workspace='cd ~/workspace'
alias dir_rails='cd ~/workspace/rails'
alias dir_prototyp='cd ~/workspace/static'
alias dir_git='cd /c/Program\ Files/Git/'
alias ssh_iwebtest='ssh dominic@10.25.69.201'
alias iweb_apigen='dir_iweb && php apigen.phar generate --config apigen.config'
alias uru='uru.bat'
alias bunx='bundle exec'
alias dir_subpack="cd ~/AppData/Roaming/Sublime\ Text\ 3/Packages/User"
