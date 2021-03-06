#eval "$(rbenv init -)"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

## alias
alias ls='ls -AF'
alias ll='ls -lF'
alias la='ls -lAF'
alias df="df -h"
alias du="du -h"

## not distinguish between lower case and upper case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

autoload -U compinit && compinit

## options
setopt BASH_AUTO_LIST
setopt LIST_AMBIGUOUS
setopt AUTO_PUSHD

## history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

## prioritize homebrew
#export PATH=~/bin:/usr/local/bin:$PATH

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Add sh to PATH for scripting
export PATH="$HOME/sh:$PATH"

# Completion for Zsh
source $HOME/app/t/etc/t-completion.zsh
