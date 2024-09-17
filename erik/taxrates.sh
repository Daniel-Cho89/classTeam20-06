#!/bin/bash
#
readInput() {
echo "Please type number of sphere"
echo "Commercial - 1"
echo "Production - 2"
echo "Rental - 3"
echo "Notary - 4"
echo "Others - 5"
read SPHERE
echo "Please write money"
read MONEY
if [ "$SPHERE" = "1" ]; then
output=$(( $MONEY/100*5 ))
echo "Your tax: $output"
elif [ "$SPHERE" = "2" ]; then
tokos=3.5
echo "Your tax:"
echo "$MONEY 100 3.5" | awk '{print $1 / $2 * $3}'
elif [ "$SPHERE" = "3" ]; then
output=$(( $MONEY/100*10 ))
echo "Your tax: $output"
elif [ "$SPHERE" = "4" ]; then
output=$(( $MONEY/100*20 ))
echo "Your tax: $output"
elif [ "$SPHERE" = "5" ]; then
output=$(( $MONEY/100*5 ))
echo "Your tax: $output"
elif [ "$SPHERE" != "[0-5]" ]; then
echo "Error"
fi
}
readInput
