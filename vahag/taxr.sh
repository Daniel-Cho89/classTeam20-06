#!/bin/bash
#
functionTokos(){
        echo "Arevtrakan 5% 
        Artadrakan 3%
        Varcakalutyun 10%
        Notarakan 20%
        Ayl 5%"
read -p "What du you want?" WHAT
case $WHAT in
        Arevtrakan)
                read -p "money?" MONEY
		arevtur=$(($MONEY + ($MONEY / 100 * 5)))
		echo $arevtur
		;;
        esac
}
functionTokos
