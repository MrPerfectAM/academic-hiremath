#!/bin/bash
# Author: gaddigayyahiremath1718-stack (24BEY10151)
# -------------------------------------------------
# Interactive manifesto generator.
# Asks the user three questions, builds a personalized paragraph,
# and appends it to a text file named after the current user.

# Question 1: Favorite Python feature
read -p "What is your favorite Python feature? " feature

# Question 2: Why do you support open source?
read -p "Why do you support open source software? " reason

# Question 3: What is your personal goal with Python?
read -p "What personal goal do you have for using Python? " goal

# Construct the manifesto paragraph
manifesto="I, ${USER}, appreciate Python because ${feature}. I believe in open source because ${reason}. My personal goal with Python is to ${goal}."

# Define output file name (e.g., gaddigayyahiremath1718-stack_manifesto.txt)
output_file="${USER}_manifesto.txt"

# Append the paragraph to the file, creating it if it does not exist
printf "%s\n\n" "$manifesto" >> "$output_file"

printf "Manifesto saved to %s\n" "$output_file"