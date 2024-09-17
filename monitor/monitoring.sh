#!/bin/bash
#
#
Status=$(systemctl is-active apache2)
if [ "$Status" = "active" ]; then
    echo "Apache HTTP Server is active"
    pgrep -fl apache2
elif [ "$Status" = "inactive" ]; then
    echo "Apache HTTP Server is inactive"
    sleep 2
    echo "---------------------"
   sudo systemctl start apache2
   echo "Apache HTTP Server started successfully"
else
    echo "Something is wrong. Please activate your web server or call your system administrator."
fi
