#to run scripts, execution policy must be set to "Unrestricted"
Set-ExecutionPolicy Unrestricted

#browsers
choco install Firefox --params "l=en-US"
#choco install GoogleChrome

#programs
choco install 7zip.install
choco install notepadplusplus.install
choco install keepass.install #free open source password manager

choco install paint.net
choco install PDFXchangeEditor

#mulitmedia
cinst vlc
cinst iTunes
#cinst spotify

#reset execution policy to "restricted"
Set-ExecutionPolicy Default
