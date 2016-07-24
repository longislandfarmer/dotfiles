export EDITOR='/usr/bin/vim -X'
export VISUAL='/usr/bin/vim -X'
export PAGER=less
export LESS=-R

# Aliases
alias l='ls -l'
alias ll='ls -l'
alias lt='ls -ltr'
alias la='ls -la'
alias v='/usr/bin/vim -X'
alias gs='git status'
alias gc='git commit'
alias gp='git pull'
alias me='ps -f -u junma --forest'

setopt   no_share_history # This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file
