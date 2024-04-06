#!/bin/bash

# Directory to save screenshots
screenshot_dir="$HOME/Pictures/Screenshots"

# Timestamp for unique filenames
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# File name for the screenshot
file_name="screenshot_$timestamp.png"

# Full path to the screenshot file
file_path="$screenshot_dir/$file_name"

# Take the screenshot using scrot
scrot "$file_path"

# Notify the user
# notify-send "Screenshot captured: $file_name" "Saved to $screenshot_dir"
