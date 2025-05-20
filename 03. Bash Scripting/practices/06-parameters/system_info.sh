#!/bin/bash

<<COMMENT1
This program display the following details about your system:
- username
- hostname
- number of users
- free memory
- disk size
COMMENT1

echo "========================================================================"
echo -e "\t\t\t MY SYSTEM INFO"
echo "========================================================================"
echo -e "Author: Oyekanmi Lekan (DevOps Eng)\nDate:13/may/2025\nTeam: Developer"
echo "========================================================================"

echo ""

echo "Details:"
echo "CURRENT USER: $(whoami)"
echo "OS NAME: $(uname)"
echo "HOSTNAME: $(hostname)"
echo "Numbers of logged in users: $(who | wc -l)"
echo -e "Memory Info: \n\t$(free -h | grep "Mem" | awk '{print "Total Memory: ", $2, "\n\tUsed Memory: ", $3, "\n\tFree Memory: ", $4}')"
echo -e "Disk Info: \n\t$(df -h | grep "/dev/sda1" | awk '{print "Total Disk: ", $2, "\n\tUsed Dist: ", $3, "\n\tFree Disk: ", $4, "\n\t% Used: ", $5}')"

echo "========================================================================"
echo -e "Report generated at $(date +"%d/%m/%Y %H:%M:%S")"
echo "========================================================================"

echo ""
echo ""