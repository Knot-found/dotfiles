#!/bin/bash

cd $(dirname $0)

for dotfile in .?*; do
	[[ "$dotfile" == ".git" ]] && continue
	[[ "$dotfile" == ".DS_Store" ]] && continue

	echo "$dotfiles"
	ln -Fis "$PWD/$dotfile" $HOME
done
