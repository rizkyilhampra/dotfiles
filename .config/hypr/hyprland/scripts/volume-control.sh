#!/bin/bash

#See https://wiki.archlinux.org/title/WirePlumber
case $1 in
i)  # increase volume with limit of 150%
    wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+
    ;;
d)      
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    ;;
*)  # do nothing
esac
