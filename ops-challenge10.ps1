# Script: Ops 201 Class 10 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 17 Feb 2023
# Purpose: Working with Preocesses

# Main

# Print to the terminal screen all active processes ordered by
#highest CPU time consumption at the top.
Get-Process | Sort-Object CPU -Descending


#Print to the terminal screen all active processes ordered by
#highest Process Identification Number at the top.
Get-Process | Sort-Object ID -Descending


#Print to the terminal screen the top five active processes
#ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WS -Descending | Select -First 5



#Start the process Internet Explorer (iexplore.exe) and have
#it open https://owasp.org/www-project-top-ten/.
Start-Process iexplore.exe | Start https://owasp.org/www-project-top-ten


#Start the process Internet Explorer (iexplore.exe) ten times
#using a for loop. Have each instance open
#https://owasp.org/www-project-top-ten/.
for(($i = 0); $i -lt 10; $i++)
{
    Start-Process iexplore.exe | Start https://owasp.org/www-project-top-ten
    #[System.Diagnostics.Process]::Start("iexplore.exe", "https://owasp.org/www-project-top-ten")

}



#Close all Internet Explorer windows.
Stop-Process -name iexplore


#Kill a process by its Process Identification Number. Choose
#a process whose termination won’t destabilize the system,
#such as Internet Explorer or MS Edge.
Stop-Process -name msedge


# End