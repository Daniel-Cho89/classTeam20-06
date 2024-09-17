#!/bin/bash
#
for user in $(cut -f1 -d: /etc/passwd); do
    echo "Crontab for $user:"
    sudo crontab -u $user -l
    echo ""
done

for users in $(cut -f3 -d: /etc/passwd);do
	echo "Crontab for $users:"
	sudo crontab -u $users -l
	echo
done
