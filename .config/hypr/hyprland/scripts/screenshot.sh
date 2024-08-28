#!/bin/bash

grim -g "$(slurp -o -r)" - | satty --filename - --fullscreen --output-filename ~/Pictures/satty-$(date '+%Y%m%d-%H:%M:%S').png --copy-command wl-copy
