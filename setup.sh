#/bin/bash

NVIM_SETTING=$HOME/.config/nvim

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

# get this file dir
script_path=$(readlink -f "$0")
script_dir=$(dirname "$script_path")

if [ ! -d $BACKUP_DIR ]; then
  mkdir -p $BACKUP_DIR
fi

# .bashrc
# remove .bashrc
if [ -f ${NVIM_SETTING} ]; then
  mv ${NVIM_SETTING} ${BACKUP_DIR}/nvim
fi

# add symbolic link
ln -s ${script_dir}/nvim ~/.config/nvim
