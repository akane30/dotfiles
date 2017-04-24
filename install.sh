#!/bin/bash
#
# Just using a shell script to install for now
#
# There are a lot of frameworks that can do all the linking, etc,
# but going to avoid the depedencies
#
# We'll back up the files we're overwriting

THIS_DIR="$(cd "$(dirname "$BASH_SOURCE[0]")" && pwd)"
BACKUP_PATH="${HOME}/.dotfiles/old_configs"

function backup() {

    if [ ! -d "${BACKUP_PATH}" ]; then
        mkdir -p "${BACKUP_PATH}"
    fi

    if [ -f "$1" ]; then
        mv "$1" "${BACKUP_PATH}/$1"
    fi
}

function install_file() {
    backup "$1"
    ln -sf "${THIS_DIR}/$2" "$1"
}

function install_dir() {
    if [ ! -z "$1" ]; then
        echo "$1 already exists, not linking!"
    else
        ln -sf "${THIS_DIR}/$2" "$1"
    fi
}

# bash config
install_file "${HOME}/.bashrc" bashrc
install_file "${HOME}/.bash_profile" bash_profile
#install_file "${HOME}/.inputrc" inputrc

# zsh config
install_file "${HOME}/.zshrc" zshrc
install_file "${HOME}/.zlogin" zlogin

# uxrvt 
install_file "${HOME}/.Xdefaults" uxrvt/.Xdefaults

# vim
install_file "${HOME}/.vimrc" vimrc
install_dir "${HOME}/.vim" vim

# screen
install_file "${HOME}/.screenrc" screenrc

# tmux
install_file "${HOME}/.tmux.conf" tmux.conf

# i3
install_dir "${HOME}/.i3" "i3"
