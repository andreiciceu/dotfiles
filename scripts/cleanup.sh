# Homebrew
rm -rf ~/Library/Caches/Homebrew/downloads

# Node modules
rm -rf ~/.npm
rm -rf ~/.yarn
rm -rf ~/Library/Caches/Yarn
rm -rf ~/.nvm

# Ruby
gem cleanup

# Android
rm -rf ~/.android
rm -rf ~/.m2
rm -rf ~/.gradle

# Docker cleanup
docker volume prune

# XCode
xcrun simctl delete unavailable
rm -rf ~/Library/Developer/Xcode
rm -rf ~/Library/Developer/CoreSimulator
rm -rf ~/Library/Caches/CocoaPods
