#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Misc
brew install macvim tmux ack git openssl wget heroku/brew/heroku nmap htop

# Storage
brew install postgres pgcli redis

# Javascript
brew install node yarn watchman

# ZSH and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mkdir ~/.oh-my-zsh/custom/themes
cp robbyrussell.zsh-theme ~/.oh-my-zsh/custom/themes
cp .zshrc ~

# RVM and ruby dev stuff
brew install phantomjs chromedriver
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash
