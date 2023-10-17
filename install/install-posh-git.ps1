### Install powershell git module
# See https://github.com/dahlbyk/posh-git
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm
Get-ExecutionPolicy
# (A) You've never installed posh-git from the PowerShell Gallery
PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force

Import-Module posh-git
Add-PoshGitToProfile -AllHosts
