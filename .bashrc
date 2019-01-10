#
# ~/.bashrc
#

# Import colorscheme from 'wal'
# &   # run the process in the backgound.
# ( ) # hide shell job control messages.

# set -o vi

# wal koristi ovo za menjanje boja!
# cat /home/d/.cache/wal/sequences
# Ovo ja koristim da bi mi kursor bio crven
#/C-V O [code]
#/\033]12;#ff0000\033

echo ']12;#ff0000\' 

HISTSIZE=5000
HISTFILESIZE=100000
export EDITOR=vim

#printf '\033]12;green\007'

#RED='[4;31m' 
#NC='[0m' 

#echo "this is ${RED}color${NC}"

	#echo ']1;#ff0000\' empty(ranger)
	#echo ']2;#ff0000\' audio(ranger)
	#echo ']5;#ff0000\' pictures (ranger)

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

alias mudo='sudo'
alias yta='youtube-dl --extract-audio --audio-format=mp3'
alias ytvF='youtube-dl --format "best[heigh=1080p] mp4"'
alias ytvf='youtube-dl --format "best[heigh=720p] mp4"'
alias v='vim'
alias sv='sudo vim'
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias packer='packer --noconfirm'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias f='factor'

alias R='R --quiet'
alias net='nmcli dev'
alias c='clear'
alias q='history -c && exit'

#PS1='${Red}\u${Green}@${LGreen}\h${NC}:\w \$ '
PS1='\u@\h:\w \$ '
#echo "this is ${Red}color${NC}"

Black='[0;30m'
Red='[0;31m' 
Green='[0;32m'
Orange='[0;33m'
Blue='[0;34m'
Purple='[0;35m'
Cyan='[0;36m'
LGray='[0;37m'
DGray='[1;30m'
LRed='[1;31m'
LGreen='[1;32m'
Yellow='[1;33m'
LBlue='[1;34m'
LPurple='[1;35m'
LCyan='[1;36m'
White='[1;37m'
NC='[0m'

# Using compton, not transset-df
#transset-df -at 0.85 > /dev/null
