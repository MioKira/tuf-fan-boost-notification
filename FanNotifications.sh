#!/bin/bash

# Specify the path to the fan_boost_mode file
fan_boost_mode_file="/sys/devices/platform/asus-nb-wmi/fan_boost_mode"

# Variable to store the previous fan boost mode
previous_mode=""

# Function to get the label for a given mode
get_mode_label() {
    case $1 in
        0) echo "Normal Mode" ;;
        1) echo "OverBoost" ;;
        2) echo "Silent Mode" ;;
        *) echo "Unknown Mode" ;;
    esac
}

# Function to check and send a notification if the mode has changed
check_and_send_notification() {
    current_mode=$(cat $fan_boost_mode_file)
    current_label=$(get_mode_label $current_mode)

    if [ "$current_mode" != "$previous_mode" ]; then
        icon_path="$(dirname "$(readlink -f "$0")")/fan"  # Replace with the path to your image
        notify-send -i "$icon_path" "Fan Boost Mode Changed" "New mode: $current_label"
        previous_mode="$current_mode"
    fi
}

# Initial check
check_and_send_notification

# Monitor for changes in the fan_boost_mode file
while true; do
    inotifywait -e modify $fan_boost_mode_file
    check_and_send_notification
done

