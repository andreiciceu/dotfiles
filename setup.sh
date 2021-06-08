#!/bin/sh

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# dotfiles manager
brew install yadm

# dev tools
brew install --cask iterm2
brew install --cask visual-studio-code
brew install docker

## js
brew install yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

## android
brew install --cask android-studio
brew install openjdk
