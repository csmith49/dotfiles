#!/bin/sh

echo "Setting up your computer..."

# check for homebrew
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update and install dependencies
brew update
brew tap homebrew/bundle
brew bundle

# symlink dotfiles
ln -s ./.bash_profile ~/.bash_profile

# update mac os preferences
source .macos