# path manipulation

# NAME
#	pathmunge -- add pathname to PATH environment variable
# 
# SYNOPSIS
#	pathmunge PATHNAME [after]
#
# DESCRIPTION
#	The pathmunge shell function prepends a pathname to the value of
#	the PATH environment variable.  If 'after' is specified, the
#	pathname is appended instead.
#
#	The pathmunge shell function is more commonly used on CentOS and
#	Red Hat Linux systems.
#
# EXAMPLE
#	$ echo $PATH
#	/bin:/usr/bin
#	$ pathumnge ~/bin
#	$ echo $PATH
#	~/bin:/bin:/usr/bin
#	$ pathumnge /usr/local/bin after
#	$ echo $PATH
#	~/bin:/bin:/usr/bin:/usr/local/bin
#
pathmunge () {
  case ":${PATH}:" in
    *:"$1":*)
      ;;
    *)
      if [ "$2" = "after" ] ; then
        PATH=$PATH:$1
      else
        PATH=$1:$PATH
      fi
  esac
}

[ -d ${HOME}/bin ] && pathmunge ${HOME}/bin

# NAME
#       epathmunge -- add pathname to an environment variable
# 
# SYNOPSIS
#       epathmunge [-a] [-r] PATHNAME [VARNAME]
#
# DESCRIPTION
#       The epathmunge shell function adds a pathname to the value of
#       VARNAME environment variable.  If VARNAME is not specified,
#	PATH is used by default.
#
# EXAMPLE
#       $ echo $PATH
#       /bin:/usr/bin
#
epathmunge() {
  local before=1 replace=0
  while [ "$1" != "${1##[-+]}" ]; do
    case $1 in
      '')
        echo $"$0: Usage: epathmunge [-a] [-r] PATH [VAR]"
        return 1;;
      -a)
        before=0 # after (append to end of search path)
        shift;;
      -r)
        replace=1 # remove any existing occurrences first
        shift;;
      *)
        echo $"$0: Usage: epathmunge [-a] [-r] PATH [VAR]"
        return 1;;
    esac
  done

  if [ -z "${1}" ]; then
    echo $"$0: Usage: epathmunge [-a] [-r] PATH [VAR]"
    return 1
  fi

  local pathname=${1}; shift; local varname=${1:-PATH}
  eval IFS=: read -a patharray <<< $(eval echo \${${varname}})

  if [ 0 -ne ${replace} ]; then
    patharray=(${patharray[@]//${pathname}/})
  fi

  if [[ ${patharray[@]} =~ ${pathname} ]]; then
    return 0 # variable already contains pathname
  fi

  if [ 0 -eq ${before} ]; then
    patharray+=(${pathname})
  else
    patharray=(${pathname} ${patharray[*]})
  fi

  export ${varname}=$(joinargs : ${patharray[*]})
  return 0
}

