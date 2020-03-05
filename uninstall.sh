#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

defaults write com.apple.finder CreateDesktop true
killall Finder
rm /usr/local/bin/hidemydesk
rm -rf /Applications/hidemydesk.app
