﻿param (
    # The location to save the images to.
    [Parameter(Position=1,HelpMessage="The location to save the images to.")]
    [string]
    $SavePath = "$($env:USERPROFILE)\Pictures",
    # The location to save the robocopy log file to.
    [Parameter(Position=2,HelpMessage="The location to save the robocopy log file to.")]
    $LogFile = "$($env:USERPROFILE)\spotlight.log"
)

$Spotlight = "$SavePath\Spotlight"
$SpotlightAssets = "$Spotlight\CopyAssets"
$SpotlightHorizontal = "$Spotlight\Desktop"
$SpotlightVertical = "$Spotlight\Mobile"
$SpotlightLocal = "$($env:LOCALAPPDATA)\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"

Add-Type -AssemblyName System.Drawing
New-Item "$Spotlight" -ItemType directory -Force;
New-Item "$SpotlightAssets" -ItemType directory -Force;
New-Item "$SpotlightHorizontal" -ItemType directory -Force;
New-Item "$SpotlightVertical" -ItemType directory -Force;

robocopy $SpotlightLocal $SpotlightAssets /min:102400 /log+:$LogFile
#Rename all pictures
Get-ChildItem $SpotlightAssets | ? { -not $_.PSIsContainer } | ? { -not [System.IO.Path]::hasExtension($_)} | % {
  
  $newFileName="$($_.name).jpg"
  Rename-Item $_.FullName $newFileName -Force
  Write-Output "$_ -> $newFileName"
}
#Delete files without any extension
Get-ChildItem -Path $SpotlightAssets | Where-Object { $_.Extension -eq $null } | Remove-Item

#TODO Move pictures to spotlight folder