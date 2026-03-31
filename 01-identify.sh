#!/bin/bash
# Author: gaddigayyahiremath1718-stack (24BEY10151)
# -------------------------------------------------
# This script gathers basic system information relevant to the Python audit.
# It extracts the Linux distribution, kernel version, current user, home directory,
# system uptime, and the current date/time. Finally, it prints a hard‑coded
# Open Source freedom message.

# Identify Linux distribution using /etc/os-release (standard across most distros)
if [ -f /etc/os-release ]; then
    . /etc/os-release
    distro="${NAME} ${VERSION}"
else
    distro="Unknown"
fi

# Kernel version via uname
kernel=$(uname -r)

# Current logged‑in user and home directory from environment variables
current_user="${USER}"
home_dir="${HOME}"

# System uptime in a human‑readable format (e.g., up 2 hours, 5 minutes)
uptime_info=$(uptime -p)

# Current date and time in the required format
current_date=$(date +"%a %b %d %Y %H:%M:%S %Z%z")

# Output the collected information with clear headings
printf "================================================================================\n"
printf "                   Python AUDIT - SYSTEM IDENTITY                    \n"
printf "================================================================================\n"
printf "Linux Distribution: %s\n" "$distro"
printf "Kernel Version:     %s\n" "$kernel"
printf "Current User:       %s\n" "$current_user"
printf "Home Directory:     %s\n" "$home_dir"
printf "System Uptime:      %s\n" "$uptime_info"
printf "Current Date/Time:  %s\n" "$current_date"
printf "--------------------------------------------------------------------------------\n"
printf "Message: This system runs on Open Source software, providing freedom to study, change, and distribute.\n"
printf "================================================================================\n"