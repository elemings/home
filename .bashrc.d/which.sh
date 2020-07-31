# -*-Shell-script-*-
 
if [ 'Linux' = `uname` ]; then
  if [ -f /etc/redhat-release ]; then
    # /etc/profile.d/which2.sh
    unalias which 2>/dev/null
  fi
fi

alias whicha='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

whichf() {
  declare -f | /usr/bin/which --read-functions $@
}

