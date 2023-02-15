#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 14 Feb 2023
# Purpose: Uses lshw to display system information to the screen

# Main
#Name of the computer 
sudo lshw | grep -v " "
# CPU 
sudo lshw | grep -A 8 "*-cpu" | grep -v "capabilities" | grep -v "configuration" | grep -v "version"
#RAM
sudo lshw | grep -A 3 "*-memory" 
#display adapter
sudo lshw | grep -A 12 "*-display" | grep -v "logical name" | grep -v "version"
#network adapter
sudo lshw | grep -A 15 "*-network"



# End