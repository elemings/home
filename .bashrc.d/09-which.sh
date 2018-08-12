# which-like commands

#unalias which 2>/dev/null

# which alias
alias whicha='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

# which function
whichf() {
  declare -f | /usr/bin/which --read-functions $@
}

