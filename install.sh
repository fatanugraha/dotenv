#!/usr/bin/env bash

basedir=`dirname $(realpath $0)`
rsync -av --exclude=.gitignore --exclude=.git --exclude=install.sh --exclude=readme.md --exclude=.ssh $basedir/ $HOME/

sudo apt-get update
sudo apt-get install -y xclip curl zsh git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
