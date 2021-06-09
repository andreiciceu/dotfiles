#!/bin/bash
gvcciDir="/Users/andrei/tools/gvcci"
templatesDir="/Users/andrei/scripts/gvcci/templates"
colorTest="/Users/andrei/scripts/colortest.sh"

# On exist, cd back
currentDir="$(pwd)"
set -e
function cleanup {
  cd "$currentDir"
}
trap cleanup EXIT

# Extract colors
imgAbsPath="$currentDir/$1"
cd $gvcciDir
python3 src/extract.py --template "$templatesDir" "$imgAbsPath"
imgName="$(basename "$1" | cut -d'.' -f1)"

# Apply
./gvcci-apply/apply.sh "$imgName" iterm
cp ~/.gvcci/themes/"$imgName"/atom-min.less ~/.atom/packages/atom-min-ui/styles/min.less
cp ~/.gvcci/themes/"$imgName"/atom-min.less ~/.atom/packages/min-syntax/styles/colors.less
cp ~/.gvcci/themes/"$imgName"/ubersicht.css ~/ubersicht/widgets/colors.css
cp ~/ubersicht/widgets/imports.coffee ~/ubersicht/widgets/imports.coffee.swap
mv ~/ubersicht/widgets/imports.coffee.swap ~/ubersicht/widgets/imports.coffee

#   Update all Wallpapers
function wallpaper() {
    sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$1'" && killall Dock
}
wallpaper $imgAbsPath

$colorTest
