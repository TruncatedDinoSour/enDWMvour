#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH="$PATH:/usr/local/bin:$HOME/.local/bin"

export RESTORE='\033[0m'
export GREEN='\033[00;32m'
export RED='\033[00;31m'

source ~/.local/share/bash_git

# Enable Vi(M) mode
set -o vi

# cd into a directory with only the name supplied
shopt -s autocd

# Enable extended globbing
shopt -s globstar
shopt -s extglob


# Function to set PS1
ps_one() {
    local c_status="$?"
    local git="$(__git_ps1 | sed 's/^ //g')"
    local venv="$(basename "$virtual_env")"
    local dir='\W'
    local propt_char='#'
    local user_colour="${GREEN}"

    [[ "$uid" != '0'   ]] && local propt_char='%'
    [[ "$c_status" != '0'   ]] && local propt_colour="${RED}$c_status "
    [[ "$git"   ]] && local dir="$git $dir"
    [[ "$venv"   ]] && local extra="{${GREEN}$venv${RESTORE}} "
    [[ "$UID" == '0'  ]] && local user_colour="${RED}"

    export PS1="\n${extra}${user_colour}\u${RESTORE}@\h ${dir} ${propt_colour}${propt_char}${RESTORE} "
}

# Function to fetch sys info
fetch_sys_info() {
    echo "    .---.    "
    echo "   /     \   Kernel: $(uname -r)"
    echo "   \.@-@./   Uptime: $(uptime -p)"
    echo "   /\`\\_/\`\   Shell: $(basename "$SHELL")"
    echo "  //  _  \\\\  Packages: $(ls /var/lib/pacman/local | wc -l)"
    echo " | \     )|_ "
    echo "/\`\_\`>  <_/ \\"
    echo "\__/'---'\__/"
}


export PROMPT_COMMAND='ps_one'


# Aliases
alias ls='ls -FhS --file-type --color=auto'
alias ll='ls -l'
alias la='ll -lA'
alias l='ll'

alias v='vim'
alias e='exit'
alias k='kill'
alias ka='killall'

alias grep='grep --color=auto'

alias mv='mv -i'
alias rm='rm -I'

alias curl='curl -fL'

alias src='source ~/.bashrc'
alias clear='clear; fetch_sys_info'


fetch_sys_info

