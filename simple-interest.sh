#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $interest"
}

# Read input from the user
read -p "Enter principal amount: " principal_amount
read -p "Enter rate of interest: " interest_rate
read -p "Enter time (in years): " time_period

# Call the function to calculate and display the result
calculate_simple_interest $principal_amount $interest_rate $time_period
