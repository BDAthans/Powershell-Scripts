#Check .NET Framework using Powershell v4+

#Run this script using powershell. Designed for PS v4, there is a v5 equivalent if needed.

#Powershell 4 script
$nl ="`n"
Write-Output($nl + "Microsoft .NET Framework v4 Information")
(Get-ItemProperty "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4*\Full") #returns full v4 information
Write-Output("-------------------------------------------------------------------------------" + $nl)
Write-Output($nl + "Microsoft .NET Framework v3 Information" + $nl)
(Get-ItemProperty "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v3*") #returns full v3 information
Write-Output("-------------------------------------------------------------------------------" + $nl)
Write-Output($nl + "Microsoft .NET Framework v2 or Below Information" + $nl)
(Get-ItemProperty "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v2*") #returns full v2 information

pause
