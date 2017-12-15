#!/bin/sh

wget https://github.com/matsuu/kataribe/releases/download/v0.3.0/linux_386.zip 
unzip linux_386.zip

sudo rm /etc/sysctl.conf
sudo ln -s /home/isucon/isucon4/settings/sysctl.conf /etc/sysctl.conf
sudo rm /etc/nginx/nginx.conf
sudo ln -s /home/isucon/isucon4/settings/nginx.conf /etc/nginx/nginx.conf
sudo rm /etc/supervisord.conf 
sudo ln -s /home/isucon/isucon4/settings/supervisord.conf /etc/supervisord.conf
ps aux | grep foreman | grep -v grep | awk '{ print "kill -9", $2 }' | sh
sudo /etc/init.d/supervisord restart
#sudo rm /etc/my.cnf
#sudo ln -s /home/isucon/isucon4/settings/my.cnf /etc/my.cnf
sudo ln -s /home/isucon/benchmarker /home/isucon/isucon4/benchmarker
