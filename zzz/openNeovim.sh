#!/bin/bash

echo "Select directory:"
echo "1. Workspace"
echo "2. projects/Emagick"

read -n 1 -s choice

if [[ $choice == "1" ]]; then
    echo "Selected $choice"
    cd ~/Workspace
    nvim
elif [[ $choice == "2" ]]; then
    echo "Selected $choice"
    cd ~/projects/Emagick
    nvim
else
    echo "Invalid Selection"
fi
