# -*-Shell-script-*-
 
# NAME
#	joinargs -- join arguments by separator
# 
# SYNOPSIS
#	joinargs SEP ARG1 ... ARGN
#
# DESCRIPTION
#	The joinargs shell function outputs a string where each
#	ARG1 to ARGN argument is seperated by a SEP string.
#
# RETURN VALUE
#	0
#
# EXAMPLE
#	$ joinargs : /path1 /path2
#	/path1:/path2

joinargs() {
  local IFS="$1"
  shift
  echo "$*"
}

