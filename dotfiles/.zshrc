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
. "/usr/local/opt/asdf/libexec/asdf.sh"
. "/usr/local/opt/asdf/etc/bash_completion.d/asdf.bash"

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

