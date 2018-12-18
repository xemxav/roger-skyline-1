#!/bin/bash

OLD_MD=`md5sum /etc/crontab.bak | cut -d ' ' -f1`
NEW_MD=`md5sum /etc/crontab| cut -d ' ' -f1`


if [ "$OLD_MD" != "$MNEW_MD" ]
    then
        echo "crontab has been modified:" | mail -u root
fi

#crontab -e
#0 0 * * *  /home/xmoreau/crontab_modif

