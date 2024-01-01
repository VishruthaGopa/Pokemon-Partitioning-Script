#!/bin/sh

# Define the path to the input CSV file and the output directory
input_file="pokemon.csv"
output_dir="./"

# Check if the input file exists
#if [ ! -f "$input_file" ]; then
#    echo pokemon.csv not found!
#    exit 1
#fi

# Read the CSV file line by line
while IFS=, read -r line
do
    # Skip the header line and empty lines
    if [ "$line" != "#,Name,Type 1,Type 2,Total,HP,Attack,Defense,Sp. Atk,Sp. Def,Speed,Generation,Legendary" ] && [ -n "$line" ]; then
        # Extract type1 from the line
        type1=$(echo "$line" | cut -d ',' -f 3)

        # Create a sub-directory if it doesn't exist
        mkdir -p "${output_dir}${type1}"

        # Append the current Pokemon line to its type's CSV file
        echo "$line" >> "${output_dir}${type1}/${type1}.csv"
    fi
done < "$input_file"

# echo Pokemon partitioning complete!
