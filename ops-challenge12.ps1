# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 22 Feb 2023
# Purpose: 

# Main
#create a local file called network_report.txt that holds the contents of an ipconfig /all command
#use Select-String to search network-report.txt and return only the IP version 4 address
#Remove the network-report.txt when you are finished searching it.

$ip_output = ipconfig /all >> "network-report.txt"

Function func
{
    $ip_output
    Select-String -Path .\network-report.txt -Pattern ipv4 -AllMatches
}

func

remove-item -Path .\network_report.txt