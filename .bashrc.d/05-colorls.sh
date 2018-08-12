# color-ls initialization

# Force 'ls' commands to list uppercase before lowercase.
export LC_ALL=C

if [ -f /etc/system-release -o -f /etc/system-release-cpe ]; then
  # CentOS/RHEL systems
  # Override aliases set by /etc/profile.d/colorls.sh file.
  alias ll='ls -l --color=always' 2>/dev/null
  alias l.='ls -d .* --color=always' 2>/dev/null
  alias ls='ls --color=always' 2>/dev/null
fi

if [ $(uname) = "Darwin" ]; then
  export CLICOLOR=1 # don't think the value really matters
fi

