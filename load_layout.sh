#!/bin/sh

# First we append the saved layout of workspace N to workspace M
i3-msg "workspace --no-auto-back-and-forth 3; append_layout ~/.config/i3/workspace_3.json"

# And finally we fill the containers with the programs they had
# (uxterm &)
(evince /home/veloXm/Books/For\ the\ Love\ of\ Go\ \(2023\)\ --\ John\ Arundel\ --\ 2022\ --\ Bitfield\ Consulting\ --\ 6d0e1a8e931de7fcc3bef5ab65c37d3e\ --\ Anna’s\ Archive.pdf &)
(alacritty &)
(alacritty &)
