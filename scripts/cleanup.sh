# Homebrew
brew cleanup

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
rm -rf ~/Library/Developer/Xcode/DerivedData/
rm -rf ~/Library/Developer/Xcode/Archives
rm -rf "~/Library/Developer/Xcode/iOS Device Logs/"
rm -rf "~/Library/Developer/Xcode/iOS DeviceSupport/"
# rm -rf ~/Library/Developer/CoreSimulator
rm -rf ~/Library/Caches/CocoaPods
rm -rf ~/.cocoapods
