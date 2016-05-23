##########
# Aliases
##########

alias ll='ls -l'
alias stmux="~/dotfiles/tmuxdev.sh"
alias outpipe='pwd > ~/.outpipeDir; echo $@ > ~/.outpipe'

##########
# Settings
##########

alias ls='ls --color=auto'

##########
# Sources
##########
if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi

if [ -f ~/dotfiles/shell/bash_prompt.sh ]; then
    source ~/dotfiles/shell/bash_prompt.sh
fi

COLORS="$HOME/dotfiles/shell/base16-shell/base16-eighties.dark.sh"
if [ -f $COLORS ]; then
    $COLORS
fi
