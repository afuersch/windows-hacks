#to run scripts, execution policy must be set to "Unrestricted"
Set-ExecutionPolicy Unrestricted

# basics
choco install git.install

#SDKs
choco install jdk8
choco install nodejs.install

#IDEs
choco install vscode

#Version control
choco install TortoiseGit
choco install github-desktop

#Tools
choco install ngrok
choco install NSwagStudio
choco install putty

#VM
choco install virtualbox

#reset execution policy to "restricted"
Set-ExecutionPolicy Default
