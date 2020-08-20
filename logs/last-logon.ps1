net user $env:username | findstr /B /C:"Last logon" | Out-File $env:USERPROFILE\logons.txt -Append
