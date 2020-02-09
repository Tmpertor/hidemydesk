#!/bin/sh
chmod +x uninstall.sh
chmod +x src/hidemydesk
chmod +x src/hidemydesk
cp src/hidemydesk /usr/local/bin/hidemydesk
cp src/hidemydesk2 /Applications/hidemydesk
chmod 777 /usr/local/bin/hidemydesk
chmod 777 /Applications/hidemydesk
defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/hidemydesk</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
killall Dock

echo "Thanks for installing."
echo "Made by Taguar258"
