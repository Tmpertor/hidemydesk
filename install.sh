#!/bin/sh

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

chmod +x uninstall.sh
chmod +x src/hidemydesk.app
chmod +x src/hidemydesk.app/Content/MacOS/hidemydesk
cp src/hidemydesk /usr/local/bin/hidemydesk
cp -R src/hidemydesk.app /Applications/hidemydesk.app
chmod 777 /usr/local/bin/hidemydesk
chmod 777 /Applications/hidemydesk.app
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/hidemydesk</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
killall Dock

echo "Thanks for installing."
echo "Made by Taguar258"
