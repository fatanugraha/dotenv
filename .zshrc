# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# git
alias gc="git commit"
alias gcm="git commit -m"
alias gcad="git commit --amend --no-edit"
alias glo="git log --oneline"
alias glh="git log --oneline | head -n 1"
alias gst="git status"
alias gp="git push"
alias ga="git add"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gbv="git branch -v"
alias gfa="git fetch --all --prune"
alias lg="lazygit"
alias vim="nvim"
alias ll="ls -la"

# dir traversals
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# p10k
if [[ $(uname) == "Darwin" ]]; then
	# perhaps let's install it via git instead so we that we can remove the if-else here?
	source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
else
	source ~/.powerlevel10k/powerlevel10k.zsh-theme
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# mise
export PATH="$HOME/.local/bin:$PATH"
eval "$(mise activate zsh)"
