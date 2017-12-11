#!/bin/sh

sudo rm /var/log/nginx/access.log
sudo sysctl -p
sudo /etc/init.d/mysqld restart
sudo service nginx reload
./benchmarker bench
sudo cat /var/log/nginx/access.log | ./kataribe
