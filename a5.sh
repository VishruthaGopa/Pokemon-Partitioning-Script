#!/bin/bash
# Faster script
# Define the path to the input CSV file and the output directory
input_file="pokemon.csv"
output_dir="./"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "pokemon.csv not found!"
    exit 1
fi

# Sort the CSV file based on the third field (Type 1) using awk and sort, and save it to a temporary sorted file.
sorted_file="sorted_file.txt"
awk -F',' 'NR>1 { print $3 "," $0 }' "$input_file" | sort -t"," -k1,1 > "$sorted_file"

# Process the sorted CSV file line by line
current_type=""
while IFS=, read -r type1 line
do
    # Skip empty lines
    if [ -n "$line" ]; then
        if [ "$type1" != "$current_type" ]; then
            # Create sub-directory if it doesn't exist
            mkdir -p "${output_dir}${type1}"
            current_type="$type1"
        fi
        # Append the line to the corresponding CSV file
        echo -e "$line" >> "${output_dir}${type1}/${type1}.csv"
    fi
done < "$sorted_file"

# Clean up temporary file
rm -f "$sorted_file"

echo "Pokemon partitioning complete!"
