# path environment

[ -d ${HOME}/bin ] && pathmunge ${HOME}/bin
[ -d ${HOME}/lib ] && pathmunge ${HOME}/lib LD_LIBRARY_PATH

# man pages
 
manpath() {
  if [ -z “${MANPATH}” ]; then
    export MANPATH=`man -w`
  fi
 
  epathmunge $1 MANPATH
}
 
[ -d ${HOME}/man ] && manpath ${HOME}/man
[ -d ${HOME}/.local/share/man ] && manpath ${HOME}/.local/share/man


