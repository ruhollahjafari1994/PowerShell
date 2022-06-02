#Get-Service
#$PSVersionTable
#Get-Help *service* -Category Cmdlet
#Get-Help Get-Service -Detailed
#Get-Help Get-Service -Examples
#Get-Help Get-Service -ShowWindow
#Update-Help
#-------------------------------------------------------------------------------
#Create five text file in this root
Set-Location "I:\PowerShell" 
Remove-Item .\* -Recurse -Force
1..5|%{New-Item -Path . -Name "$("file"+"$_").txt" -ItemType "file"}
#-------------------------------------------------------------------------------
# combine a path with a child path
Join-Path -Path "path" -ChildPath "childpath"
#-------------------------------------------------------------------------------
# It has resolve all the vigne named folders and system named folders and it has combined
join-path "c:\win*" "System*" -Resolve
#-------------------------------------------------------------------------------
#Use Join-Path with the powershellregistery provider
Join-Path -Path "HKLM:\System" -ChildPath *ControlSet* -Resolve
Join-Path -Path C:,D: -ChildPath NewFolder
#-------------------------------------------------------------------------------
#Split-Path command returns a particular portion of a path 

# 1 -Parent Parameter is used to return Parent portion of path only 
Split-Path -Path I:\Powershell\file1.txt -Parent
Split-Path -Path I:\PowerShell\file1.txt ### Parent is default parameter , So we can Omit It

# 2 -Leaf parameter is used to get topmost file/folder name in mentioned path
Split-Path -Path ".\*.txt" -Leaf #### without -Resolve parameter
Split-Path -Path ".\*.txt" -Leaf -Resolve ## with -Resolve parameter

 
