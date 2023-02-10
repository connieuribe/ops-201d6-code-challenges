#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 09 Feb 2023
# Purpose: Working with arrays and directories

# Main

# Creates four directories: dir1, dir2, dir3, dir4
mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4
# Put the names of the four directories in an array
path_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")
# References the array variable to create a new .txt file in each directory

for ((i=0; i<${#path_array[@]}; i++))
do
    touch "${path_array[i]}file1.txt"
done

# End