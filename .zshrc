# Use 256 color terminal
export TERM="xterm-256color" 

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

# Set plugins
plugins=(
  git
)

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# -- CUSTOM SETTINGS BELOW --

# Setup aliases
alias dv="cd /mnt/d/development"

# Remove hostname from showing
prompt_context() {}

# Enable vim
bindkey -v
export KEYTIMEOUT=1

# Run default tmux on startup
if [ ! "$TMUX" ]; then
    tmux a -d -t main
fi

# Change directory color to cyan
eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)
