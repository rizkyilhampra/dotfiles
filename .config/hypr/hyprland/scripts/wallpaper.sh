#!/bin/bash

swww-daemon --format xrgb

PIC=$HOME/Wallpapers/1.jpeg

swww img "${PIC}" --transition-type wipe --transition-fps 60 --transition-duration 2 --transition-angle 30 --transition-step 90

if [ ! -e "${HOME}/.cache/wal/colors" ]; then
    wal -i "${PIC}"
    echo "Successfully set a new wallpaper and generated colors from it."
fi
