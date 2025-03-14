#!/bin/sh
set -e

echo "Activating feature 'Monaspace fonts'"

curl https://github.com/githubnext/monaspace/releases/download/v1.200/monaspace-v1.200.zip -0 -J -L -s --output monaspace.zip
unzip -o -q monaspace.zip
cd monaspace-v1.200
mkdir -p ~/.local/share/fonts
rm -rf ~/.local/share/fonts/Monaspace*
mkdir -p ~/.local/share/fonts/Monaspace/
cp ./fonts/otf/* ~/.local/share/fonts/Monaspace/
cp ./fonts/variable/* ~/.local/share/fonts/Monaspace/
fc-cache -f
cd ..
rm -rf monaspace-v1.200 monaspace.zip __MACOSX