#!/bin/bash

log_file_dir="/tmp/"
script_name="log_"$(basename "$0")
LOG_FILE=$log_file_dir$script_name
keyboard_connected=$(ioreg -p IOUSB -w0 | sed 's/[^o]*o //; s/@.*$//' | grep -v '^Root.*' | grep 'Magic Keyboard')
MOUSE_MAC_ADDRESS=0C:E4:41:1E:7A:00
if [ -n "$keyboard_connected" ]; then
    echo "$(date): Keyboard connected. Connecting to mouse..." >> $LOG_FILE
    blueutil --connect "$MOUSE_MAC_ADDRESS"
else 
    echo "$(date): Keyboard NOT connected" >> $LOG_FILE
fi