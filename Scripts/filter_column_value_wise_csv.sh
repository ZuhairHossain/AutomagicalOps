#!/bin/bash

# Replace 'your_csv_file.csv' with the actual name of your CSV file
csv_file="file_name.csv"

# Specify the output folder where CV files will be saved
output_folder="output_folder_name"
mkdir -p "$output_folder"

# Extract and process each row in the CSV file
tail -n +2 "$csv_file" | while IFS=, read -r title cv; do
    # Extract the first word from the "title" column
    first_word=$(echo "$title" | awk '{print $1}')

    # Create the output filename
    output_file="$output_folder/$first_word.csv"

    # Append the "cv" column value to the output file
    echo "$cv" >> "$output_file"
done

echo "Separate CSV files have been created for each title in the '$output_folder' folder."
