#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

complete -cf sudo

# search history
export HISTCONTROL=ignoreboth

# aliases
alias ls='ls --color=auto'
alias ll='ls -alFh --color=auto'
alias grep='grep --color=auto'
alias valgrind='valgrind --leak-check=full --tool=memcheck'
alias updateoff='yay && paccache -rk1 && yay -Sc && sudo journalctl --vacuum-time=2d && sudo journalctl --vacuum-size=500M && shutdown -h now'
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'

function workon() {
    if test -z "$1" ; then
        echo "Specify the name of the virtual environment"
    elif test ! -f "$HOME/.venv/$1/bin/activate" ; then
        echo "Environment doesn't exist"
    else
        deactivate 2> /dev/null
        source "$HOME/.virtualenvs/$1/bin/activate"
    fi
}

# Hook
source /usr/share/doc/pkgfile/command-not-found.bash

# Bug fix
shopt -s checkwinsize

PS1="\[\e[0;32m\]\u@\h:\[\e[m\]\w\$ "
