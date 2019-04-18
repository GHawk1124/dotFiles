transset-df -a .85
xrdb ~/.Xresources
source .profile

grep --color=auto
alias ls="ls --color=auto"

export PS1="[\[\e[31m\]\u\[\e[m\]@\[\e[32;40m\]\h\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[33m\]\w\[\e[m\]]\[\e[37m\]\\$\[\e[m\]: "
pulseaudio -D
clear
