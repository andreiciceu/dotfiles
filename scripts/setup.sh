#!/bin/bash

# tools
brew install --cask qbittorrent
brew install --cask spotify
brew install --cask google-chrome
brew install --cask firefox
brew install --cask slack
brew install --cask iina
brew install --cask flameshot
## PDF conversion
brew install ocrmypdf tesseract tesseract-lang pandoc

# dev tools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask fork
brew install --cask lens
brew install --cask dbeaver-community
brew install --cask db-browser-for-sqlite
brew install --cask figma
brew install --cask phpstorm
brew install --cask goland

## containers
brew install --cask docker
brew install kubectl helm

## js
brew install yarn pnpm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install node

## android
brew install openjdk
brew install --cask android-studio
## iOS
xcode-select --install

## Utils
brew install watch
brew install anomalyco/tap/opencode
opencode auth login
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc