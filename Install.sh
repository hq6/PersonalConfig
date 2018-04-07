#!/bin/bash

# This script installs a minimal Linux configuration for hq6, covering settings
# for vim, bash, tmux, and git.
# It attempts to consider the fact that certain configurations are
# site-specific (ie, aliases for a particular environment such as CloudLab or a
# company).

pushd  "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null

if [[ ! -e "$HOME/.vimrc" ]]; then
    rm -rf  "$HOME/.vimsets"
    mkdir -p $HOME/.vim/syntax

    cp dotfiles/vimrc "$HOME/.vimrc"
    cp -r dotfiles/vimsets "$HOME/.vimsets"
    cp -r dotfiles/vim/syntax/* "$HOME/.vim/syntax"

else
    echo "$HOME/.vimrc already exists. Cowardly refusing to clobber it."
fi

if [[ ! -e "$HOME/.bashrc" ]]; then
    cp dotfiles/bashrc "$HOME/.bashrc"
else
    echo "$HOME/.bashrc already exists. Cowardly refusing to clobber it."
    echo "set -o vi" >> $HOME/.bashrc
fi

if [[ ! -e "$HOME/.tmux.conf" ]]; then
    cp dotfiles/tmux.conf "$HOME/.tmux.conf"
else
    echo "$HOME/.tmux.conf already exists. Cowardly refusing to clobber it."
fi

if [[ ! -e "$HOME/.gitconfig" ]]; then
    cp dotfiles/gitconfig "$HOME/.gitconfig"
else
    echo "$HOME/.gitconfig already exists. Cowardly refusing to clobber it."
fi

# Install certain binaries which are mostly useful on Ubuntu.
mkdir -p "$HOME/bin"
cp bin/* "$HOME/bin"

popd > /dev/null
