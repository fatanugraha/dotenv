# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# git
alias gc="git commit"
alias gcm="git commit -m"
alias gcad="git commit --amend"
alias glo="git log --oneline"
alias glh="git log --oneline | head -n 1"
alias gst="git status"
alias gp="git push"
alias ga="git add"

# dir traversals
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
