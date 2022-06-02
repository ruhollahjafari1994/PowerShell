#Get-Service
#$PSVersionTable
#Get-Help *service* -Category Cmdlet
#Get-Help Get-Service -Detailed
#Get-Help Get-Service -Examples
#Get-Help Get-Service -ShowWindow
#Update-Help

#Create five text file in this root
Set-Location "I:\PowerShell" 
Remove-Item .\* -Recurse -Force
1..5|%{New-Item -Path . -Name "$("file"+"$_").txt" -ItemType "file"}

# combine a path with a child path
# Join-Path -Path "path" -ChildPath "childpath"

# It has resolve all the vigne named folders and system named folders and it has combined
join-path "c:\win*" "System*" -Resolve


