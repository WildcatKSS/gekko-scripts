# Gekko scripts
Here you find different scripts to install, maintain and start the cryptocoin trading bot Gekko and additional strategies.

## License
GNU General Public License v3.0 License

## Installation
By running the following commands the scripts will be installed in the location /usr/local/bin.

`cd /usr/local/bin`

`git clone https://github.com/WildcatKSS/gekko-scripts.git -b master`

'sudo chmod 6744 gekko-install.sh gekko-update.sh gekko-service.sh`

## The scripts
The scripts will install and maintain the crypto trading bot Gekko and the additional strategies.

### Gekko-install
This script will install the crypto trading bot Gekko and the additional strategie in /usr/local/lib.

Run the following commands:

`sudo gekko-install.sh`

### Gekko-update
This script will monthly update the crypto trading bot Gekko and the additional strategies.

### Gekko-service
Gekko-install.sh will run this script and:
1. install Gekko as a service
1. start the service at system boot.
