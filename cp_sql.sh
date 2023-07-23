#!/bin/bash

for file in ~/Desktop/moneysmart/*/*.sql; do
  if [ -f "$file" ]; then
    echo "copying $(basename "$file")"
    cp "$file" "$(basename "$file")"
  else
    echo "no .sql files found in the folder"
  fi
done
