#to run scripts, execution policy must be set to "Unrestricted"
Set-ExecutionPolicy Unrestricted

choco install dropbox
choco install PDFCreator

#chocolatey GUI tool
choco install ChocolateyGUI

#mail
choco install thunderbird

#messengers
choco install skype

#optional
choco install libreoffice #office suite

#choco install filezilla
choco install uTorrent
#choco install calibre #free and open source e-book library

#reset execution policy to "restricted"
Set-ExecutionPolicy Default
