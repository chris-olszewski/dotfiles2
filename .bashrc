#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias steam-wine='WINEDEBUG=-all wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Steam/Steam.exe'
PS1='[\u@\h \W]\$ '

export VISUAL="vim"
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin:$HOME/bin"
export PATH="$PATH:/usr/local/heroku/bin"

export NVM_DIR="/home/chris/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
SC_CLIENT_ID=ae96d0d7048f64460757e7ddcbeeada5

export OH="$HOME/code/work/openhomes"

alias slsx="$HOME/code/opensource/serverless/bin/serverless"

