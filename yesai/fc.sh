#!/bin/bash
#
echo "The script will now 'ls' the /usr/local/"
ls -l /usr/local
read -p "Enter the dir: " DDIR
case $DDIR in
        bin)
                find /usr/local/bin | wc -l
                ;;
        share)
                find /usr/local/share | wc -l
                ;;
        etc)
                find /usr/local/etc | wc -l
                ;;
        sbin)
                find /usr/local/sbin | wc -l
                ;;
                *)
esac
