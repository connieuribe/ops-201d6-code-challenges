#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 08 Feb 2023
# Purpose: Prints the login history of users on this computer

# Main

print_userLogin(){
    local str='LIST OF USERS LAST LOGINS'
    echo $str
    echo
    last --fullnames
}

str='-------------------------------------------------------------------'
echo $str
echo
print_userLogin
echo
echo $str


# End