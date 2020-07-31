# date/time functions

alias dt="date +%Y%b%d.%H%M%S"

# NAME
#	sam -- seconds after midnight
# 
# SYNOPSIS
#	sam
#
# DESCRIPTION
#	The sam shell function displays the current number of seconds
#	after midnight.
#
# RETURN VALUES
#	current number of seconds after midnight
#
# EXAMPLE
#	$ sam
#	58360
#
# TODO
#	Add a format specifier for seconds after midnight to a wrapper
#	for the date(1) command and/or strftime(3) function.
#
sam() {
  local hour=$(( 10#$(date +%H) ))
  local min=$(( 10#$(date +%M) ))
  local sec=$(( 10#$(date +%S) ))
  echo $(( (${hour}*3600) + (${min}*60) + ${sec}))
}

# NAME
#	dts -- date-time stamp
# 
# SYNOPSIS
#	dts
#
# DESCRIPTION
#	The dts shell function displays the current date/time in the
#	format "YYYY-DOY-SAM" where DOY is the day of year and SAM is
#	seconds after midnight.
#
# RETURN VALUES
#	number of current seconds after midnight
#
# EXAMPLE
#	$ dts
#	2018-215-58672
#
dts() {
  local yd=$(date +%Y-%0j)
  local sc=$(eval sam)
  echo ${yd}-${sc}
}

