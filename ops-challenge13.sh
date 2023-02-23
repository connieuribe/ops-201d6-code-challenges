#!/bin/bash
# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 22 Feb 2023
# Purpose: 

# Main
# Add to your bash script a sixth option that calls a function to:

# Take a user input string. Presumably the string is a domain name such as Google.com.
domain_input=''
ask()
{  
    read -p "Enter a domain name: " domain_input
}
ask
touch results.txt
# Run whois against a user input string.
whois $domain_input >> results.txt
# Run dig against the user input string.
dig $domain_input >> results.txt
# Run host against the user input string.
host $domain_input >> results.txt
# Run nslookup against the user input string.
nslookup $domain_input >> results.txt
# Output the results to a single .txt file and open it with your favorite text editor.
cat results.txt






#End