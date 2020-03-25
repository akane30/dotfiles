#!/bin/bash
git clone --bare https://github.com/akane30/dotfiles.git "$HOME/.cfg"

function dfconfig {
	`which git` --git-dir="$HOME/.cfg/" --work-tree="$HOME" $@
}

mkdir -p "${HOME}/.cfg-backup"

dfconfig checkout

if [ $? = 0 ]; then
	echo "Checked out config."
else
	echo "Backing up pre-existing dot files..."
	dfconfig checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} "${HOME}/.cfg-backup/{}"
	# checkout again now that conflicting files removed
	dfconfig checkout
fi

# set no showing untracked files
dfconfig config status.showUntrackedFiles no
