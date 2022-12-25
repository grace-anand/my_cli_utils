#!/bin/bash

# This script will copy all .env files in subdirectories to the root directory

for folder in */; do
  if find "$folder" -name '.env' | grep -q '.env'; then
    echo "copying $(basename "$folder").env"
    cp "$folder/.env" "$(basename "$folder").env"
  else
    echo "no .env file found in $folder"
  fi
done

# to use the saved env
cd folder_name
cp "../${PWD##*/}.env" .env