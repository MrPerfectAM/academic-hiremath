#!/bin/bash
# Author: gaddigayyahiremath1718-stack (24BEY10151)
# -------------------------------------------------
# This script audits a set of important directories, including generic system
# locations and Python‑specific library paths. For each existing directory it
# reports the total size, permission bits, and owning user in aligned columns.
# The output is generated with awk for clean formatting.

# Base directories to audit
dirs=(
    "/etc"
    "/var/log"
)

# Dynamically append Python‑related directories
dirs+=("/usr/lib/python3.10")
dirs+=("/usr/local/lib/python3.10")

# Print table header
printf "%‑30s %‑10s %‑12s %‑10s\n" "Directory" "Size" "Permissions" "Owner"
printf "%‑30s %‑10s %‑12s %‑10s\n" "---------" "----" "-----------" "-----"

# Loop through each directory
for dir in "${dirs[@]}"; do
    if [ -d "$dir" ]; then
        # Use du to get total size in human‑readable form (summarize the directory)
        size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        # Use stat to retrieve permission bits and owner
        perm=$(stat -c "%A" "$dir")
        owner=$(stat -c "%U" "$dir")
        # Output using printf for aligned columns
        printf "%‑30s %‑10s %‑12s %‑10s\n" "$dir" "$size" "$perm" "$owner"
    else
        # If the directory does not exist, note it (optional)
        printf "%‑30s %‑10s %‑12s %‑10s\n" "$dir" "N/A" "N/A" "N/A"
    fi
done | awk '
BEGIN { OFS="\t" }
{
    print $1,$2,$3,$4
}
'