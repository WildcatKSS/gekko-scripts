#!/bin/bash

# Update the crypto trading bot Gekko and the additional strategie
cd /usr/local/lib/gekko

sudo git checkout stable

sudo git pull

cd /usr/local/lib/gekko-strategies

sudo git checkout stable

sudo git pull

sudo cp /usr/local/lib/gekko-strategies/* /usr/local/lib/gekko -R

cd /usr/local/lib/gekko

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

cd /usr/local/lib/gekko/exchange

sudo npm install --only=production

sudo npm install talib tulind convnetjs zero-fill stats-lite numbro mathjs cluster lodash.ismatch gauss

exit 0
