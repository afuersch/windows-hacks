param (
    # The location to save the images to.
    [Parameter(Position=1,HelpMessage="The location to save the images to.")]
    [string]
    $savePath = "$($env:USERPROFILE)\Pictures"
)

$sourceFolder = "$($env:LOCALAPPDATA)\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
$spotlightTempFolder = $savePath
$logFile = "C:\spotlight.log"
robocopy $sourceFolder $spotlightTempFolder /min:102400 /log+:$logFile
#Rename all pictures
Get-ChildItem $spotlightTempFolder | ? { -not $_.PSIsContainer } | ? { -not [System.IO.Path]::hasExtension($_)} | % {
  
  $newFileName="$($_.name).jpg"
  Rename-Item $_.FullName $newFileName -Force
  Write-Output "$_ -> $newFileName"
}
#Delete files without any extension
Get-ChildItem -Path $spotlightTempFolder | Where-Object { $_.Extension -eq $null } | Remove-Item

#TODO Move pictures to spotlight folder
