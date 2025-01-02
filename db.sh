#!/bin/bash

while true; do
    git pull origin master && /usr/bin/node add.js && git commit -a -m 'git auto commit' && git push origin master
    current_date=$(timedatectl show -p LocalTime --value)
    new_date=$(date +'%G-%m-%d %H:%M:%S' -d '+1 days')
    timedatectl set-time "$new_date"
done
