# Browser
sudo apt-get install google-chrome-stable
sudo apt-get remove --purge firefox
sudo rm -rf .mozilla/firefox/
sudo rm -rf /etc/firefox/
sudo rm -rf /usr/lib/firefox-addons/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get -y install google-chrome-stable

# Traditional Chinese input
sudo apt-get install hime

# Server settings
sudo apt-get install wine
wget -O ~/Desktop/winbox.exe http://www.mikrotik.com/download/winbox.exe
