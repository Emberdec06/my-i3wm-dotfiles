#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
figlet ember | lolcat -F .2 -a -s 150 -d 25 -S 22

alias pacsyu='sudo pacman -Syyu'

alias cp='cp -i'

ex () {
   if [ -f $1 ] ; then
      case $1 in
         *.tar.bz2)   tar xjf $1      ;;
         *.tar.gz)   tar xzf $1      ;;
         *.bz2)      bunzip2 $1      ;;
         *.rar)      rar x $1      ;;
         *.gz)      gunzip $1      ;;
         *.tar)      tar xf $1      ;;
         *.tbz2)      tar xjf $1      ;;
         *.tgz)      tar xzf $1      ;;
         *.zip)      unzip $1      ;;
         *.Z)      uncompress $1   ;;
         *)         echo "'$1' cannot be extracted via extract()" ;;
      esac
   else
      echo "'$1' is not a valid file"
   fi
} 



alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
alias ..='cd ..'
alias emb='cd ../../../../../../../run/media/ember/Embers\ hdd\ 1'
alias dhms='watch -n1 "date '+%D%n%T' | figlet -k" | lolcat'
alias b1='xrandr --output eDP --brightness 1'
alias b5='xrandr --output eDP --brightness .5'
alias mk='sudo mkdir -p /run/media/ember/Embers\ hdd\ 1'
alias mt='sudo mount /dev/sda2 /run/media/ember/Embers\ hdd\ 1'
alias mk0='sudo mkdir -p /run/media/ember/Ember\ hdd\ 0'
alias mt0='sudo mount /dev/sdb1 /run/media/ember/Ember\ hdd\ 0'
PS1='\[\e[31m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[35m\]\W\[\e[m\] \[\e[36m\]\\$\[\e[m\] '
