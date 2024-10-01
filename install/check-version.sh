#!/bin/bash

if [ ! -f /etc/os-release ]; then
    echo "$(tput setaf 1)Error: Unable to determine OS. /etc/os-release file not found."
    echo "Installation stopped."
    exit 1
fi

. /etc/os-release

# Check if running on EndeavourOS or higher
if [ "$ID" != "endeavouros" ]; then
    echo "$(tput setaf 1)Error: OS requirement not met"
    echo "You are currently running: $ID"
    echo "OS required: EndeavourOS"
    echo "Installation stopped."
    exit 1
fi
