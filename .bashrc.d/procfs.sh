# -*-Shell-script-*-
 
if [ -d /proc ]; then

  # Show environment of a pid.
  # $1: pid from /proc
  procenv() {
    local pid
    for pid in $*
    do
      if [ -n $pid -a -r /proc/$pid/environ ]; then
        cat /proc/$pid/environ |sed 's/\x0/\n/g'
      fi
    done
  }

fi

