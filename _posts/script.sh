#!/bin/bash

# Set the directory where the files are located
DIRECTORY=/workspaces/Crypto-Airdrop-Almanac/_posts

# Loop through each file in the directory
for FILENAME in "$DIRECTORY"/*
do
  # Get the title of the post from the file name
  TITLE=$(basename "$FILENAME" .txt)
  
  # Add the data to the file
  echo -e "---\nlayout: post\ntitle: \"$TITLE\"\ndate: $(date +"%Y-%m-%d %T")\npreview: holder.js/300x300?auto=yes\ntags: layer_level blockchain type\n---" > "$FILENAME"
  echo "" >> "$FILENAME"
  echo "<!-- ![Picture 1](holder.js/800x600?auto=yes) -->" >> "$FILENAME"
  echo "" >> "$FILENAME"
  echo "Description of the project" >> "$FILENAME"
done