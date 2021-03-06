#!/bin/bash

# Installing the crypto trading bot Gekko and the additional strategie
cd /usr/local/lib

sudo apt update -y

sudo apt upgrade -y

sudo apt install -y nodejs npm

sudo apt autoremove -y

sudo git clone https://github.com/WildcatKSS/gekko.git -b stable

sudo git clone https://github.com/WildcatKSS/gekko-strategies.git -b stable

sudo cp /usr/local/lib/gekko-strategies/* /usr/local/lib/gekko -R

cd /usr/local/lib/gekko

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

cd /usr/local/lib/gekko/exchange

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

# Edit crontab to run on a monthly basis an update of the crypto trading bot Gekko and the strategies
sudo echo "0 0 1 * * root /usr/local/bin/gekko-update.sh" | crontab -

#Create a Gekko service and start gekko
sudo mv /usr/local/bin/gekko.service /etc/systemd/system/gekko.service

sudo gekko-service.sh

exit 0
