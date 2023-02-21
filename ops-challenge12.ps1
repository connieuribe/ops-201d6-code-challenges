#create a local file called network_report.txt that holds the contents of an ipconfig /all command
#use Select-String to search network-report.txt and return only the IP version 4 address
#Remove the network-report.txt when you are finished searching it.

$ip_output = ipconfig /all > "network-report.txt"

Function func
{
    $ip_output
    Select-String -Path .\network-report.txt -Pattern ipv4 -AllMatches
}

func