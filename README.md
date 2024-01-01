# Pokemon Partitioning Script
***Author:*** Vishrutha Gopa

## Overview
This script enhances the performance of a Pokemon query program by organizing Pokemon data based on types. It reads a CSV file containing Pokemon information, creates sub-directories for each Pokemon type, and organizes data into corresponding CSV files.

## Usage
1. Place the `pokemon.csv` file in the same directory as the script.
2. Run the script: `./a5.sh`

## Requirements
- The script assumes a CSV file named `pokemon.csv` is present in the same directory.

## Steps
1. **Check File Existence**
   - Checks if `pokemon.csv` exists; otherwise, it displays an error and exits.

2. **Sort CSV File**
   - Sorts the CSV file based on the third field (Type 1) and saves it to a temporary file.

3. **Partition Data**
   - Creates sub-directories for each Pokemon type and organizes data into corresponding CSV files.

4. **Cleanup**
   - Removes temporary files after processing.

5. **Completion Message**
   - Displays a message indicating successful Pokemon partitioning.

## Performance
- The script aims to optimize query program performance by organizing Pokemon data based on types.

## Notes
- The original `pokemon.csv` file is not modified or moved during partitioning.