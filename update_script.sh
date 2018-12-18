#!/bin/sh

echo "\n" >> /var/log/update_script.log
date >> /var/log/update_script.log
echo "\n" >> /var/log/update_script.log
apt-get -y update >> /var/log/update_script.log
apt-get -y full-upgrade >> /var/log/update_script.log

#crontab -e
#0 4 * * 1 /home/xmoreau/update
#@reboot /home/xmoreau/update