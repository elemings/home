# ~/.bash_profile

# This file is used in place of .bash_login and .profile files.  See
# 'INVOCATION' section of bash(1) man page.

# Source individual setup scripts.
if [ -d ${HOME}/.profile.d ]; then
  for i in ${HOME}/.profile.d/*.sh ; do
    if [ -r "$i" ]; then
      if [ "${-#*i}" != "$-" ]; then
        . "$i"
      else
        . "$i" >/dev/null 2>&1
      fi
    fi
  done
  unset i
fi

