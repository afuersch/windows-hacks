#to run scripts, execution policy must be set to "Unrestricted"
Set-ExecutionPolicy Unrestricted

# basics
choco install git.install
choco install docker-desktop

#SDKs
choco install jdk8
choco install nodejs.install

#IDEs
choco install vscode

#Version control
choco install TortoiseGit
choco install github-desktop
choco install git-fork

#Tools
choco install ngrok
choco install NSwagStudio
choco install putty
choco install postman
choco install azure-data-studio

#messenger
choco install microsoft-teams

#VM
choco install virtualbox

#reset execution policy to "restricted"
Set-ExecutionPolicy Default
