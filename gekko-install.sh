#!/bin/bash

# Installing the crypto trading bot Gekko and the additional strategie
cd /usr/local/lib

sudo apt-get update -y

sudo apt-get install -y git nodejs npm

sudo apt-get autoremove -y

sudo git clone git://github.com/askmike/gekko.git -b stable

sudo git clone https://github.com/WildcatKSS/gekko-strategies.git -b stable

sudo cp gekko-strategies/* gekko -R

cd /usr/local/lib/gekko

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

cd /usr/local/lib/gekko/exchange

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

# Edit crontab to run on a monthly basis an update of the crypto trading bot Gekko and the strategies
sudo gekko-update.sh

#Create a Gekko service and start gekko
sudo gekko-service.sh

exit 0
