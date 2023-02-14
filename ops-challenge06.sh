#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 13 Feb 2023
# Purpose: detects if a file or directory exist, creates one if it doesn't

# Main

#Create a script that detects if a file or directory exists,
#then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.

declare -a arr
echo "How many files or directories do you want to look for?"
read ans


while [ $ans -gt 0 ]
do
echo $ans
     ans=$(( $ans - 1 ))
     str=""
     echo "Enter f for file and d for directory."
     read fileOrDirStr
    if [[ $fileOrDirStr == "f" ]]
    then 
        echo "Enter the file name with the extension (Example: filename.txt)"
        read str
        var=($(find . -name ${str}))
        if [[ -z $var ]] #if the filename is null, create it 
        then
            touch "${str}"
            arr+=( $str )
        else
            arr+=( $var )
        fi
    elif [[ $fileOrDirStr == "d" ]]
    then 
        echo "Enter the directory name (Example: home )"
        read str
        var=($(sudo find / -type d -name ${str}))
        if [[ -z $var ]] #if the directory is null, create it 
        then
            mkdir ${str}
            arr+=( "./$str/" )
        else
            arr+=( $var )
        fi
    else
        echo "Try again later"
        break
    fi
    
done


echo ${arr[*]}


# End