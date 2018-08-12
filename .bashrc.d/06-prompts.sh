# -*-Shell-script-*-

export PS1="[\[\033[32m\]\u@\h:\l \[\033[33m\]\W\[\033[0m\]]$ "

# the default 2-line prompt used in Cygwin
cygwinps() {
  export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "
}

