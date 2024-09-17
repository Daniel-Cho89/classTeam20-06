#!/bin/bash
#
DIR="/usr/local"
ls $DIR

read -p "choose a dir:  " dirname

cdir=$(ls -1 $DIR/$dirname | wc -l)

echo "Total $cdir files in Directory"
