#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

rm /usr/local/bin/hidemydesk
rm -rf /Applications/hidemydesk
