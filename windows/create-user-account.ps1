<#

.Synopsis

Create local user account on Windows from PowerShell

.Description

https://pureinfotech.com/create-local-account-windows-10/

.Parameter Username

(Mandatory) The username

.Parameter Fullname

(Mandatory) The fullname of the user.

.Notes

Version: 1.0

#>

param (
    # The user name.
    [Parameter(Position=1,HelpMessage="The username",mandatory=$true)]
    [string]
    $Username,
    # The fullname of the user.
    [Parameter(Position=1,HelpMessage="The fullname of the user",mandatory=$true)]
    [string]
    $Fullname
)

Write-Output "Enter password:"
$Password = Read-Host -AsSecureString
#TODO link MS-account: -Name "MicrosoftAccount\accounName@outlook.com"
New-LocalUser $Username -Password $Password -FullName $Fullname -Description "Main user"
Add-LocalGroupMember -Group "Administrators" -Member $Username
