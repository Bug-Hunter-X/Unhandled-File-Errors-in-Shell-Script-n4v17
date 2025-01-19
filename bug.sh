#!/bin/bash

# This script attempts to process a file, but it mishandles potential errors.

input_file="my_data.txt"

# Attempt to process the file without error checking
cat "$input_file" | awk '{print $1}' > output.txt

if [ $? -eq 0 ]; then
  echo "File processed successfully"
else
  echo "Error processing file"
fi