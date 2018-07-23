#Install-VSCode
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

Write-Host "Installing Chocolatey"
# iex (wget 'https://chocolatey.org/install.ps1' -UseBasicParsing)
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Now install the apps I always require
choco feature disable --name showDownloadProgress
choco install -y git
choco install -y vscode
# choco install -y 7zip.install
# choco install -y putty.install
# choco install -y wireshark