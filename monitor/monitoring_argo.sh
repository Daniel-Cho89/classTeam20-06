#!/bin/bash
#
cat /var/run/nginx.pid
if [ $? -eq 0 ]
then
	echo "procces is running"
else
	echo "not running"
	sudo systemctl start nginx
	if [ $? -eq 0 ];then
		echo "service running"
	else
		sudo apt-get install nginx -y
		sudo systemctl start nginx
	fi
fi
sudo systemctl is-active nginx
