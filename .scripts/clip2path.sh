#!/usr/bin/env bash
set -e

types=$(wl-paste --list-types)

if grep -q '^text/' <<<"$types"; then
    wl-paste --no-newline | kitty @ send-text --stdin             
elif grep -q '^image/' <<<"$types"; then
    ext=$(grep -m1 '^image/' <<<"$types" | cut -d/ -f2 | cut -d';' -f1)
    file="/tmp/clip_$(date +%s).${ext}"
    wl-paste > "$file"
    printf '%q' "$file" | kitty @ send-text --stdin             
else
    wl-paste --no-newline | kitty @ send-text --stdin
fi
