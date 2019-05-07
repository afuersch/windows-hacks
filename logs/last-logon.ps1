net user $env:username | findstr /B /C:"Last logon" | Out-File D:\logons.txt -Append
