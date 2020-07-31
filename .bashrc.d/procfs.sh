# -*-Shell-script-*-
 
if [ -d /proc ]; then

  # Show environment of a pid.
  # $1: pid from /proc
  procenv() {
    if [ -n $1 -a -r /proc/$1/environ ]; then
      cat /proc/$1/environ |sed 's/\x0/\n/g'
    fi
  }

fi

