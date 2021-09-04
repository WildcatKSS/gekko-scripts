# Gekko scripts
Here you find different scripts that will install, maintain and start the cryptocoin trading bot Gekko and additional strategies.

## License
GNU General Public License v3.0 License

## Installation
By running the following commands the scripts will be installed in the location /usr/local/bin.

`cd /usr/local/bin`

`sudo apt-get update -y`

`sudo apt-get install -y git`

`sudo git clone https://github.com/WildcatKSS/gekko-scripts.git -b master`

`sudo chmod 6744 gekko-install.sh gekko-update.sh gekko-service.sh`

All commands  at once

`cd /usr/local/bin && sudo apt-get update -y && sudo apt-get install -y git && sudo git clone https://github.com/WildcatKSS/gekko-scripts.git -b master && sudo chmod 6744 gekko-install.sh gekko-update.sh gekko-service.sh`

## The scripts
The scripts will install, maintain and start the crypto trading bot Gekko and the additional strategies.

### Gekko-install.sh
This is the only script that you will need to run manually. This script will:
1. Install the crypto trading bot Gekko and the additional strategie in /usr/local/lib
1. Edit crontab to run a monthly basis an update of the trading bot Gekko and the strategies
1. Create a Gekko service and start gekko

Run the script with the following command:

`sudo gekko-install.sh`

### Gekko-update.sh
This script will monthly update the crypto trading bot Gekko and the additional strategies.

### Gekko-service.sh
This script will:
1. Create a Gekko service
1. Start Gekko
