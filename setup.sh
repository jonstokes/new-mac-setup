#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jstokes/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Misc
brew install macvim tmux ack git openssl wget nmap htop
brew install bat fx ncp eza
brew install httpie
brew install lsd
brew install jq
brew install tree
brew install watch
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-navigation-tools
brew install zsh-you-should-use

### fonts setup
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true
brew install font-hack-nerd-font
brew install freetype

## fzf
brew install fzf
### To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Storage
brew install postgres pgcli
brew services start postgresql
#brew install redis
#brew services start redis

# Elixir and Go
brew install gpg gawk
brew install asdf
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install erlang latest
asdf install elixir latest
asdf install nodejs lts

brew install --cask livebook

# GUI apps
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask opera
brew install --cask discord
brew install --cask sourcetree
brew install --cask signal
brew install --cask telegram

# git config
git config --global credential.helper osxkeychain
git config --global user.name "Jon Stokes"
git config --global user.email "jon@jonstokes.com"
brew install gh

# ZSH and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
curl -o ~/.zshrc "https://raw.githubusercontent.com/jonstokes/new-mac-setup/master/.zshrc"
curl -o ~/.ackrc "https://raw.githubusercontent.com/jonstokes/new-mac-setup/master/.ackrc"

mkdir ~/Local
mkdir ~/Local/Repositories

# My custom theme
mkdir ~/.oh-my-zsh/custom/themes
curl -o ~/.oh-my-zsh/custom/themes/robbyrussell.zsh-theme "https://raw.githubusercontent.com/jonstokes/new-mac-setup/master/robbyrussell.zsh-theme"

# DMGs
#cd ~/Downloads
#curl -O https://download.docker.com/mac/stable/Docker.dmg

# Javascript
# Deprecated: this is done with asdf now
#brew install node yarn watchman
#npm -g install babel-cli create-react-app

# RVM and ruby dev stuff
#brew install phantomjs chromedriver
#brew install gnupg
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
#\curl -sSL https://get.rvm.io | bash

# AWS
# brew install awscli
# npm install -g aws-sam-local serverless
