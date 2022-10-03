alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias tree="tree -C -a"

alias py="python3"

export TERM=xterm-256color
export EDITOR=$(command -v vim)

# Regular
green='\[\e[0;32m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
blue='\[\e[0;34m\]'
red='\[\e[0;31m\]'
yellow='\[\e[0;33m\]'
white='\[\e[0;37m\]'

# Bold
GREEN='\[\e[1;32m\]'
PURPLE='\[\e[1;35m\]'
CYAN='\[\e[1;36m\]'
BLUE='\[\e[1;34m\]'
RED='\[\e[1;31m\]'
YELLOW='\[\e[1;33m\]'
WHITE='\[\e[1;37m\]'

# Underline
_green='\[\e[4;32m\]'
_purple='\[\e[4;35m\]'
_cyan='\[\e[4;36m\]'
_blue='\[\e[4;34m\]'
_red='\[\e[4;31m\]'
_yellow='\[\e[4;33m\]'
_white='\[\e[4;37m\]'

reset='\[\e[0m\]'


#export PS1="${reset}┌─[${green}\u${reset}][${reset}\h${reset}]:${green}\w${reset}\n└▶ ${reset}"
export PS1="${GREEN}\u@\h${WHITE}:${BLUE}\w${WHITE}\$${reset} "
