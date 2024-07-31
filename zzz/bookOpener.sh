#!/bin/bash

# Books directory
BOOKS_DIR="$HOME/Books"

# Get list of files
FILES="$(ls $BOOKS_DIR)"

# Show the list of files in rofi
SELECTED_FILE=$(echo "$FILES" | rofi -dmenu -p "Select a file to open:")

# If file was selected then open it otherwise print error
if [[ -n "$SELECTED_FILE" ]]; then
    dunstify "Opening $SELECTED_FILE..."
    xdg-open "$BOOKS_DIR/$SELECTED_FILE"
    
    # Check if opened with success
    if [[ $? != 0 ]]; then
        dunstctl close
        dunstify "An error has occurred."
    fi
else
    dunstify "No file selected."
fi
