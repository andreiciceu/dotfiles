#!/bin/sh

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# tools
brew install yadm
brew install --cask qbittorrent
brew install --cask spotify
brew install --cask google-chrome
brew install --cask firefox
brew install --cask bitwarden
brew install --cask slack
brew install --cask iina

# ux
brew install --cask amethyst

# dev tools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask fork
brew install --cask lens
brew install --cask db-browser-for-sqlite

# python
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python get-pip.py


## CLI additions
brew install watch
### OpenStack
pip install python-openstackclient
pip install python-magnumclient

## container
brew install --cask docker
brew install kubectl
brew install helm

## js
brew install yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

## android
brew install --cask android-studio
brew install openjdk

## iOS
xcode-select --install
sudo gem install cocoapods
sudo gem install fastlane

# env
yadm clone https://github.com/andreiciceu/dotfiles
yadm status
