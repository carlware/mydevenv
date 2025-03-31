# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Fig pre block. Keep at the top of this file.
## Path to your oh-my-zsh installation.
export ZSH="/Users/carlosramirez/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_COLORIZE_STYLE="colorful"

plugins=(
	git 
	z 
  zsh-peco-history
	zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-github-copilot
)
source $ZSH/oh-my-zsh.sh


# default editor
export EDITOR="vim"
# vim mode on
set -o vi

# increase ulimit
ulimit -n 2048

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# flutter
export FLUTTER_ROOT="$(asdf where flutter)"
#export PATH=$PATH:~/development/flutter/bin

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOSUMDB=off

# gopass
export HISTCONTROL=ignorespace
export GPG_TTY=$(tty)

# rust
export RUST_WITHOUT=rust-docs
# source "$HOME/.cargo/env"

# custom scripts
source ~/.scripts.sh
# init key bindings
source ~/.zsh_bindkey
# loads custom
if [ -f ~/.custom.sh ]; then
   source ~/.custom.sh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fix not loading peco
source ~/.zsh/zsh-peco-history/zsh-peco-history.zsh
