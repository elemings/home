# -*-Shell-script-*-
 
if [ "Linux" = `uname` ]; then
  # Red Hat Enterprise Linux
  if [ -r /etc/redhat-release ]; then
    export REDHAT_RELEASE=$(uname -r|grep -o 'el[0-9]')
  fi
elif [ "Darwin" = `uname` ]; then
  export DARWIN_VERSION=$(uname -a |awk '{print $3}') 
fi

