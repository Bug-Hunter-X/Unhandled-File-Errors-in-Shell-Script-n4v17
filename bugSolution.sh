#!/bin/bash

# Improved script with robust error handling

input_file="my_data.txt"

# Check if the file exists and is readable
if [ ! -r "$input_file" ]; then
  echo "Error: Input file '$input_file' does not exist or is not readable" >&2
exit 1
fi

# Process the file using safer commands
cat "$input_file" | awk '{print $1}' > output.txt || {
  echo "Error: An error occurred during file processing" >&2
exit 1
}

echo "File processed successfully" 