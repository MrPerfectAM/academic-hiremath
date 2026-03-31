#!/bin/bash
# Author: gaddigayyahiremath1718-stack (24BEY10151)
# -------------------------------------------------
# Detect the operating system and select the appropriate package manager.
# Determine the correct package name for Python (usually python3) and
# check whether it is installed. If installed, retrieve the exact version.
# Finally, a case statement prints short philosophy notes for four
# popular FOSS tools, including Python.

# Function to detect package manager
detect_pkg_manager() {
    if command -v apt-get >/dev/null 2>&1; then
        echo "apt"
    elif command -v dnf >/dev/null 2>&1; then
        echo "dnf"
    elif command -v yum >/dev/null 2>&1; then
        echo "yum"
    elif command -v pacman >/dev/null 2>&1; then
        echo "pacman"
    elif command -v zypper >/dev/null 2>&1; then
        echo "zypper"
    else
        echo "unknown"
    fi
}

# Identify distribution for nicer messages
if [ -f /etc/os-release ]; then
    . /etc/os-release
    distro="${NAME}"
else
    distro="Linux"
fi

pkg_manager=$(detect_pkg_manager)

# Define the Python package name based on common conventions
python_pkg="python3"

# Check installation status
if command -v python3 >/dev/null 2>&1; then
    status="INSTALLED"
    # Extract version (e.g., Python 3.10.12)
    version=$(python3 --version 2>&1)
else
    status="NOT INSTALLED"
    version="N/A"
fi

# Header output
printf "================================================================================\n"
printf "                   Python AUDIT - PACKAGE INSPECTOR                 \n"
printf "================================================================================\n"
printf "Distribution: %s\n" "$distro"
printf "Package Manager: %s\n" "$pkg_manager"
printf "Status: %s is %s on this %s system.\n" "$python_pkg" "$status" "$distro"
printf "Version: %s\n" "$version"
printf "--------------------------------------------------------------------------------\n"
printf "FOSS Philosophy Notes:\n"

# Case statement for philosophy notes
case "$python_pkg" in
    python3)
        printf " - Python: A versatile language that embodies the principle of readability and community‑driven development.\n"
        ;;
esac

case "git" in
    git)
        printf " - Git: Decentralized version control that empowers collaboration and transparency.\n"
        ;;
esac

case "gcc" in
    gcc)
        printf " - GCC: The GNU Compiler Collection, a cornerstone of free software compilation.\n"
        ;;
esac

case "vim" in
    vim)
        printf " - Vim: A powerful, extensible editor that respects the Unix philosophy of composability.\n"
        ;;
esac

printf "================================================================================\n"