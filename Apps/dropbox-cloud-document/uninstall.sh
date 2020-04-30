#!/usr/bin/env bash

basedir=`dirname $(realpath $0)`
xdg_app_dir=$HOME/.local/share/applications
xdg_mime_dir=$HOME/.local/share/mime

rm -f $xdg_app_dir/dropbox-cloud-document.desktop
rm -f $xdg_mime_dir/packages/text-dropbox-cloud-document.xml

update-desktop-database $xdg_app_dir
update-mime-database $xdg_mime_dir