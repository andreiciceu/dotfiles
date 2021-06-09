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

# ux
brew install --cask amethyst

# dev tools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask fork

## CLI additions
brew install watch

## container
brew install --cask docker
brew install kubectl
brew install helm

## xcode
xcode-select --install

## js
brew install yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

## android
brew install --cask android-studio
brew install openjdk

