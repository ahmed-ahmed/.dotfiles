# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=$PATH:/$HOME/Downloads/apache-maven-3.8.4/bin
#export PATH=/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"

ZSH_THEME="af-magic"


plugins=(git npm yarn)

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
#eval "$(mcfly init zsh)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# gitBranch() {
#     ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
#     echo $ref
# }

# branch=$(gitBranch)
# alias gck= "git add . && git commit -m \"${branch}|Ahmed| "
#export NODE_OPTIONS=--openssl-legacy-provider
export JAVA_HOME=`/usr/libexec/java_home -v 11`

[ -f ~/.resh/shellrc ] && source ~/.resh/shellrc # this line was added by RESH (Rich Enchanced Shell History)
eval $(thefuck --alias)
eval "$(zoxide init zsh)"
