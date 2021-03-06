
if [[ "$OSTYPE" == "linux-gnu" ]]; then

echo "this is linux"

cp ./.zshrc ~/

cp ./.vimrc ~/

mkdir -p ~/.vim/colors

cp ./solarized.vim ~/.vim/colors



elif [[ "$OSTYPE" == "darwin"* ]]; then

osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

 defaults write com.apple.dock persistent-apps -array

defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Launchpad.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/iTerm.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Slack.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'


defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/System Preferences.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Tolsadus/42homebrewfix/master/install.sh)"

brew install npm
defaults write com.apple.dock tilesize -int 75

cp ./.zshrc ~/

killall Dock

clear

echo "\n\n\n\n\n\n\n\n\n\n\nPlease terminate terminal for changes to take effect\nThis will close all Terminals!!"

open -a "Google Chrome" https://wethinkcodestudents.slack.com/

cp .vimrc ~/

mkdir -p ~/.vim/colors

cp solarized.vim ~/.vim/colors
osascript -e 'tell application "Terminal" to quit'
fi
