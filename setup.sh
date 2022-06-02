#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Misc
brew install macvim tmux ack git openssl wget nmap htop
#brew install hub heroku/brew/heroku
brew install bat fx exa
brew install httpie

## lsd
brew install lsd

### fonts setup
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install freetype

## fzf
brew install fzf
### To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install


# Storage
brew install postgres pgcli #redis
brew services start postgresql
#brew services start redis

# Javascript
brew install node yarn watchman
#npm -g install babel-cli create-react-app

# Elixir and Go
brew install gpg gawk
brew install asdf
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install elixir latest
asdf install nodejs latest

# RVM and ruby dev stuff
#brew install phantomjs chromedriver
#brew install gnupg
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

#\curl -sSL https://get.rvm.io | bash

# AWS
# brew install awscli
# npm install -g aws-sam-local serverless

# ZSH and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# git config
git config --global credential.helper osxkeychain

cd ~
mkdir Local
mkdir Local/Repositories
cd Local/Repositories
git clone https://github.com/jonstokes/new-mac-setup.git
cd new-mac-setup

mkdir ~/.oh-my-zsh/custom/themes
cp robbyrussell.zsh-theme ~/.oh-my-zsh/custom/themes

cp .zshrc ~
cp. ackrc ~
cp .rspec ~

# DMGs
#cd ~/Downloads
#curl -O https://download.docker.com/mac/stable/Docker.dmg
