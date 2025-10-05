#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
by kls
'

echo -e "$ascii_art"
echo "=> Omakub is best for fresh Ubuntu 24.04+ installations!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Omakub..."
rm -rf ~/.local/share/omakub

#https://github.com/KLS-90/omakube-private.git
#git clone https://github.com/basecamp/omakub.git ~/.local/share/omakub >/dev/null
# wget -qO- https://raw.githubusercontent.com/KLS-90/omakube-private/privateDev/boot.sh

git clone https://github.com/KLS-90/omakube-private.git ~/.local/share/omakub >/dev/null
#if [[ $OMAKUB_REF != "master" ]]; then
#	cd ~/.local/share/omakub
#	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
#	cd -
#fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
