#!/usr/bin/env bash

# User must run sh bootstrap.sh for safety

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;
# updates the inner submodules
git submodule update --init --recursive

function doIt() {
	rsync --exclude "exclusions/" --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
	source ~/.bash_profile;
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

# Set to zsh
if [ $0  == "/bin/zsh" ]; then
	echo "Switch to zsh"
	chsh -s /bin/zsh
fi;


