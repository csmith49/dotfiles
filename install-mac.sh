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

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# symlink dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/Documents/dotfiles/.zshrc $HOME/.zshrc

# symlink dotfiles
rm -rf $HOME/.bash_profile
ln -s $HOME/Documents/dotfiles/.bash_profile $HOME/.bash_profile

# update mac os preferences
echo "Updating OSX settings..."
source .macos
