#!/bin/bash

# Update and upgrade the package lists for apt-get
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install unzip


# Install Python dependencies
sudo apt-get install python3-pip -y
pip3 install selenium
pip3 install beautifulsoup4
pip3 install pandas 
pip3 install numpy 
pip3 install requests
pip3 install fake-useragent 
pip3 install time

# Install Google Chrome
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y update
apt-get -y install google-chrome-stable


# Download and install ChromeDriver
CHROMEDRIVER_VERSION=122.0.6261.128
wget -N https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chmod +x /usr/local/bin/chromedriver
