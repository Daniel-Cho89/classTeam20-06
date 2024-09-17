#!/bin/bash
declare -A area_tax_rates=(
    [TRADE]=5
    [MAN]=3.5
    [RENT]=10
    [NOTARY]=20
    [OTHER]=5
)
echo "-----------------------------------------------------------------------"
read -p "Choose an area: TRADE, MAN, RENT, NOTARY, OTHER: " area
area=$(echo "$area" | tr '[:lower:]' '[:upper:]')  # Convert to uppercase
echo "-----------------------------------------------------------------------"
read -p "Enter the base price of the item only digits: " base_price
echo "-----------------------------------------------------------------------"
echo "You Entered $base_price in $area area"
echo "Calculating total price with tax added..."
sleep 1
# Calculate the total price for the chosen area within the function
final_rate(){
    if [[ -n ${area_tax_rates[$area]} ]]; then
        tax_rate=${area_tax_rates[$area]}
        # `scale=2` is used piping with `bc` foe math or financial calculations
        total_price=$(echo "scale=2; $base_price + ($base_price * $tax_rate / 100)" | bc)
        echo "$area has a tax rate of $tax_rate%, and the total price with tax is: $total_price"
    else
        echo "Invalid area selected."
    fi
}
final_rate
