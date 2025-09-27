#!/bin/bash

# Prompt the user to enter a new domain name
read -p "Please enter the new domain name: " new_domain

# Directory containing docker-compose files
dir="$(dirname "$0")/docker-compose-customized"

# Find and replace in all files under the docker-compose directory
find "$dir" -type f -exec sed -i "s/18.144.124.66/$new_domain/g" {} +

echo "All occurrences of 18.144.124.66 have been replaced with $new_domain in docker-compose directory."
