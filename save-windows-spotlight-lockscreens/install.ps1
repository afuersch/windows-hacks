# This script requires admin rights to create a new scheduled task.
# The script will run in the context of the user who created the scheduled task. 
$action = New-ScheduledTaskAction -Execute "Powershell.exe" `
  -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File $(Get-Location)\save-spotlight-images.ps1"
$trigger =  New-ScheduledTaskTrigger -Daily -At 9am
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "save-spotlight-images" -Description "Copy spotlight images from temporary folder to Pictures"
