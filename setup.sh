#/bin/bash

NVIM_SETTING=$HOME/.config/nvim

# create backup directory

BACKUP_DIR="${HOME}/.DotenvBackups"

if [ ! -d $BACKUP_DIR ];
then
    mkdir -p $BACKUP_DIR
fi

# .bashrc
# remove .bashrc
if [ -f ${NVIM_SETTING} ]; then
    mv ${NVIM_SETTING} ${BACKUP_DIR}/nvim
fi

# add symbolic link
ln -s ${PWD}/nvim ~/.config/nvim
