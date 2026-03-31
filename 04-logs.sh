#!/bin/bash
# Author: gaddigayyahiremath1718-stack (24BEY10151)
# -------------------------------------------------
# Log analysis script.
# Accepts a log file path as the first argument and a keyword as the second.
# Suggests a realistic Python log location in the comments.
# Counts occurrences of the keyword and displays the last five matching lines.

# Verify arguments
if [ $# -lt 2 ]; then
    echo "Usage: $0 <log_file> <keyword>"
    exit 1
fi

log_file="$1"
keyword="$2"

# Suggested typical Python log location (e.g., when using logging module)
# Example: /var/log/python/app.log

# Initialize counter and an array to hold matching lines
match_count=0
declare -a matches

# Read the log file line by line
while IFS= read -r line; do
    if [[ "$line" == *"$keyword"* ]]; then
        ((match_count++))
        matches+=("$line")
    fi
done < "$log_file"

# Output total occurrences
printf "Found %d occurrences of \"%s\" in %s\n" "$match_count" "$keyword" "$log_file"

# If there are matches, display the last five
if [ "$match_count" -gt 0 ]; then
    printf "Last 5 matching entries:\n"
    # Use tail on the array of matches
    printf "%s\n" "${matches[@]}" | tail -n 5
fi