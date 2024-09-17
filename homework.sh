#!/bin/bash
#
#create dirs
echo "creating dirs"
echo "--------------------------"
sleep 1
mkdir -pv data/dir{1..5}
echo "created"

touch data/dir{1..5}/text{1..5}.txt
echo 
echo "5 toghanoc text" >> data/dir1/text3.txt
echo "this text have London in it" >> data/dir3/text1.txt
mv data/dir5/text2.txt data/dir5/changed1.csv && mv data/dir5/text3.txt data/dir5/changed3.csv
