# configured using oh-my-zsh
ZSH_THEME="steeef"
DISABLE_AUTO_UPDATE="true"
plugins=(
  git # virtualenvwrapper
)

export ZSH="/home/fata/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# aliases and shorthands
alias gxclip="xclip -sel clip"
alias pwgen="tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1 | gxclip"
alias ssh_pub='cat ~/.ssh/id_rsa.pub'
alias clean_pyc="find . -name \*.pyc -delete"
alias notify='curl https://sentry.apps.yeay.xyz/api/notify/ -H "Authorization: `cat ~/.secrets/notify_key`" --data '

say_done() ( spd-say 'done'; zenity --info --text "$(date)\nsource: $0" --width 300 )

PATH=$PATH:~/Apps/scripts
