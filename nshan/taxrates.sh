#!/bin/bash
#
read -p "Enter the number: " NUM
read -p "Enter sphere: " WORD
percent(){
        case $WORD in
                a)
                        echo $(($NUM + ($NUM * 5) / 100))
                        ;;
                b)
                        echo "$NUM +( $NUM * 3.5 / 100)" | bc
                        ;;
                c)
                        echo $(($NUM + ($NUM * 10) / 100))
                        ;;
                d)
                        echo $(($NUM + ($NUM * 20) / 100))
                        ;;
                *)
                        echo $(($NUM + ($NUM * 5) / 100))
        esac
}
percent
