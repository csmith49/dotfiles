#!/bin/sh

echo "Setting up your computer..."

# install some critical tools
sudo apt install -y zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# symlink dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# set up zsh as default shell
chsh -s /bin/zsh
