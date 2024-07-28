#!/bin/bash

# Books directory
BOOKS_DIR="$HOME/Books"

# Get list of files
FILES="$(ls $BOOKS_DIR)"

# Show the list of files in rofi
SELECTED_FILE=$(echo "$FILES" | rofi -dmenu -p "Select a file to open:")

# If file was selected then open it otherwise print error
if [[ -n "$SELECTED_FILE" ]]; then
    xdg-open "$BOOKS_DIR/$SELECTED_FILE"
    dunstify "Opening $SELECTED_FILE"
else
    dunstify "No file selected"
fi
