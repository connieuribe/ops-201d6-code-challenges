#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 11 Feb 2023
# Purpose: Display running processes and kill a process

# Main
# Write a script that displays running processes, 
ps aux
# asks the user for a PID, then kills the process with that PID.
ans_input="No"
ask (){
    echo "Do you have a process to kill? Enter Yes or No"
    echo
    read ans_input 
}

ask
while [[ $ans_input == "Yes" ]]
do
    echo "Enter PID: "
    read pid_input
    kill -9 $pid_input
    ask   
done

echo "DONE"





# End