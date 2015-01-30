#!/bin/bash

# Lines that start with "#" are comments.
# The exception to this rule is the first line of the file,
# which tells the OS which program to use to run the script.
# Common options include /bin/bash/, /usr/bin/perl/, and /bin/sh.
# The "#!" symbol is pronounced "she-bang".

echo "Printing the entire file..."
# Not sure what any of these commands do?
# Just type in "man <command>" from a terminal window!
# Use arrow keys to scroll, and q to quit.
cat gsi_list.txt

echo
echo "Printing the first line..."
head -n 1 gsi_list.txt

echo
echo "Printing the last six lines..."
tail -n 6 gsi_list.txt

echo
echo "Printing last names only (sort of)..."
cut -d "," -f 2 gsi_list.txt

echo
echo "Printing the last names in sorted order..."
# Piping takes the output from one command and uses it as the input
# for another command.
cat gsi_list.txt | tail -n 6 | cut -d "," -f 2 | sort

echo
echo "Writing names starting with V to v.txt..."
# grep and sed are advanced commands that use regular expressions
# (regex). Read the man pages for more information.
cat gsi_list.txt | grep "^V" | sed "s/Spring 20/Sp/g" > v.txt

echo
echo "Printing v.txt..."
cat v.txt

echo
echo "Printing number of lines of v.txt..."
cat v.txt | wc -l

echo "Done."
exit 0
