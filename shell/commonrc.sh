##########
# Aliases
##########

alias la='ls -la'
alias ll='ls -l'
alias popd='popd > /dev/null'
alias tma="tmux attach"

alias dotfiles='pushd ~/dotfiles > /dev/null'
alias vimrc='vim ~/.vimrc'
alias vman='vim_manual'

alias httpserv=$'tmux rename-window "http ($(pwd | grep -o \'/[^/]*$\'))" 2> /dev/null && python3 -m http.server'

##########
# Scripts
##########

function vim_manual() {
    vim <(man $1)
}

##########
# Settings
##########

alias ls='ls --color=auto'
alias rspec='rspec --color'