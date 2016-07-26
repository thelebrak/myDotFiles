# ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias lh="ls -lh"
alias lr="ls -LR"
alias l="ls"
alias sl="ls"

# file management
alias cp="cp -v"
alias rm="rm -v"
alias mv="mv -v"

# quick directory movement
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cd-="cd -"
alias c-="cd -"
alias c="cd"

# display numbers in a human readable format
alias df="df -Th --total"
alias free="free -h"

# copy the current working directory to the clipboard
alias cpwd="pwd | xclip -selection clipboard"

# quickly find files and directory
alias ff="find . -type f -name"
alias fd="find . -type d -name"

# internet related stuff
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias ?="ping -c 4 8.8.8.8"
alias myip="curl http://ipecho.net/plain; echo"

# reload bashrc
alias refresh=". ~/.bashrc && echo 'bash refreshed'"

# one letter aliases
alias g="git"
alias h="history"
alias m="man"
alias p="python3"
alias pp="pip3"
alias r="rm"
alias s="screen"
alias v="vim"

# apt related aliases
alias maj="sudo apt update && sudo apt upgrade"
alias upd="sudo apt update"
alias upg="sudo apt upgrade"
alias install="sudo apt install"
alias show="sudo apt show"

# To move in specific folders
alias nb="cd ~/Code/notebook && vim notebook.md"
alias code="cd ~/Code && ls"
alias todo="cd ~/Documents/misc/todolist && vim todolist.md"
alias idea="cd ~/Documents/misc/todolist && vim ideas.md"
alias journal="cd ~/Documents/misc/diary && vim 2016_diary.md"
alias chinois="cd ~/Documents/chinois ; mousepad voca_et_phrases.md &"
alias learn-bash="cd ~/Code/learning/bash && vim notes.md"
alias learn-python="cd ~/Code/learning/python && vim notes.md"
alias learn-unix="cd ~/Code/learning/tools/unix && vim notes.md"
alias learn-vim="cd ~/Code/learning/tools/vim && vim notes.md"

# misc aliases
alias dus="du -sh *"
alias open="exo-open"
alias rmdir="rm -rfv"
alias histg="history | grep"
alias md5="md5sum"

# Functions
mcd () {
	mkdir -p "$1"
	cd $1
}

ld () {
	cd "$1"
	ls
}

usedlast () {
	if [ $# -eq 0 ]; then
		ls -lt "." | head
	else
		ls -lt "$1" | head
	fi
}

copyfile () {
	cat "$1" | xclip -selection clipboard
}

# Most of this aliases are found here : 
# https://www.gulshansingh.com/posts/useful-bash-aliases/
# https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions
# https://www.reddit.com/r/linux/comments/1dggii/what_do_you_all_think_are_quintessential_aliases/


# To find candidates for good aliases, run this one-line command 
# history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
