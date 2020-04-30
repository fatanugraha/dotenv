#!/usr/bin/env bash

basedir=`dirname $(realpath $0)`
xdg_app_dir=$HOME/.local/share/applications
xdg_mime_dir=$HOME/.local/share/mime

mkdir -p $xdg_app_dir
cp -f $basedir/dropbox-cloud-document.desktop $xdg_app_dir/dropbox-cloud-document.desktop
echo "Exec=$basedir/handler.sh %F" >> $xdg_app_dir/dropbox-cloud-document.desktop

mkdir -p $xdg_mime_dir/packages
cp -f $basedir/text-dropbox-cloud-document.xml $xdg_mime_dir/packages/text-dropbox-cloud-document.xml

update-desktop-database $xdg_app_dir
update-mime-database $xdg_mime_dir
xdg-mime default dropbox-cloud-document.desktop text/dropbox-paper
xdg-mime default dropbox-cloud-document.desktop text/dropbox-gdoc
xdg-mime default dropbox-cloud-document.desktop text/dropbox-gsheet
xdg-mime default dropbox-cloud-document.desktop text/dropbox-gslides
