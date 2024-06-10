#!/bin/bash

text=$(xclip -o)

if grep $text /home/veloXm/clipmark.txt
then
    dunstify "$text is already in clipmark."
else
    echo "$text" >> ~/clipmark.txt
    dunstify "$text is added to clipmark."
fi
