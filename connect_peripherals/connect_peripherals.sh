#!/bin/bash

MOUSE_MAC_ADDRESS=0C:E4:41:1E:7A:00
KEYBOARD_MAC_ADDRESS=88:4D:7C:F0:FF:E4
log_file_dir="/tmp/"
script_name="log_"$(basename "$0")
LOG_FILE=$log_file_dir$script_name
keyboard_connected=$(ioreg -p IOUSB -w0 | sed 's/[^o]*o //; s/@.*$//' | grep -v '^Root.*' | grep 'Magic Keyboard')

if [ -z "$keyboard_connected" ]; then
    echo "$(date): Connecting to keyboard..." >> "$LOG_FILE"
    blueutil --connect "$KEYBOARD_MAC_ADDRESS" >> "$LOG_FILE"
else
    echo "$(date): Keyboard already connected" >> "$LOG_FILE"
fi

mouse_connected=$(blueutil --is-connected "$MOUSE_MAC_ADDRESS")

if [ "$mouse_connected" == 0 ]; then
  echo "$(date): Connecting to mouse..." >> "$LOG_FILE"
  blueutil --connect "$MOUSE_MAC_ADDRESS" >> "$LOG_FILE"
fi