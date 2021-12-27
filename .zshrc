# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/$HOME/Downloads/apache-maven-3.8.4/bin
# Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"

ZSH_THEME="af-magic"


plugins=(git docker npm yarn brew macos mvn)

source $ZSH/oh-my-zsh.sh

# Example aliases
source $HOME/.aliases

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# set -o vi
# bindkey -v
# bindkey "^I^I" vi-cmd-mode
# bindkey "^F" history-incremental-search-backward



alias e="exit"
alias work="cd ~/work"
alias rm="rm -rf"