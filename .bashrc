# ~/.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Source individual setup scripts
if [ -d ~/.bashrc.d ]; then
  for i in ${HOME}/.bashrc.d/*.sh; do
    if [ -r "$i" ]; then
      if [ "$PS1" ]; then
        . "$i"
      else
        . "$i" >/dev/null 2>&1
      fi
    fi
  done
  unset i
fi
