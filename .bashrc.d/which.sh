# -*-Shell-script-*-
 
if [ 'Linux' = `uname` ]; then
  if [ -f /etc/redhat-release ]; then
    # /etc/profile.d/which2.sh
    unalias which 2>/dev/null
  fi
fi

