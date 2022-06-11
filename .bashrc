#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
export XINITRC="/home/user/.config/X11/xinitrc"
PATH="$PATH:/usr/local/bin:$HOME/.local/bin"
source $HOME/.config/aliasrc
alias vim=nvim
export HISTFILE="${XDG_STATE_HOME}"/bash/history
