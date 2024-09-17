#!/bin/bash
Status=$(systemctl is-active nginx)
if [ "$Status" = "active" ]; then
  echo "Your WEB server is active"
   pgrep -fl nginx
elif [ "$Status" = "failed" ]; then
  sudo yum install nginx
elif [ "$Status" = "inactive" ]; then
        echo "Your web server is inactive .... "
        sleep 2
        echo "---------------------"
  sudo systemctl start nginx
  echo "your web server is turned on... automatically"
else
  echo "Something is wrong. Please activate your web server or call your system administrator."
fi
