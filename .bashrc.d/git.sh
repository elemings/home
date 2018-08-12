
# Pathname of GIT global configuration file.
#export GIT_CONFIG=~/.gitconfig

# If enabled, GIT system configuration file is not read.
#export GIT_CONFIG_NOSYSTEM=true

# Pathname of GIT project template.
export GIT_TEMPLATE_DIR=~/Developer/Library/git

# Root directory for my GIT repositories.
export MY_GIT_ROOT=~/Developer/Data/git

# Root directory for my GIT working copies.
export MY_GIT_COPY=~/Developer/Projects

if [ $(command -v scl)]; then
  # GIT 1.9 (GIT 1.7 is default version for RHEL 6.)
  alias git19='scl enable git19 bash'
fi

