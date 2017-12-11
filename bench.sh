#!/bin/sh

sudo rm /var/log/nginx/access.log
sudo service nginx reload
./benchmarker bench
sudo cat /var/log/nginx/access.log | ./kataribe
