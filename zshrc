export EDITOR='/usr/bin/vim -X'
export VISUAL='/usr/bin/vim -X'
export PAGER=less
export LESS=-R
# it seems that I don't need to set this in ubuntu
#export TERM=screen-256color
#export TERM=xterm-256color

# Aliases
alias l='ls -l'
alias ll='ls -l'
alias lt='ls -ltr'
alias la='ls -la'
alias v='nvim'
alias vv='vim -X -u ~/github/dotfiles/vimrc_tiny'
alias gf='git fetch --prune'
alias gs='git status'
alias gc='git commit'
alias gcam='git commit -am'
alias me='ps -f -u junma --forest'

# reclaim ctrl-s to avoid freezing vim
stty stop undef
