#Install-VSCode
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

# Download URL, you may need to update this if it changes
$downloadUrl = "https://go.microsoft.com/fwlink/?Linkid=852157"

# What to name the file and where to put it
$installerFile = "vscode-install.exe"
$installerPath = (Join-Path $env:TEMP $installerFile)

# Install Options
# Reference:
# http://stackoverflow.com/questions/42582230/how-to-install-visual-studio-code-silently-without-auto-open-when-installation
# http://www.jrsoftware.org/ishelp/
# I'm using /silent, use /verysilent for no UI

# Install with the context menu, file association, and add to path options (and don't run code after install: 
$installerArguments = '/silent /mergetasks="!runcode,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath"'

#Install with default options, and don't run code after install.
#$installerArguments = "/silent /mergetasks='!runcode'"

Write-Host "Downloading $installerFile..."
(New-Object System.Net.WebClient).DownloadFile($downloadUrl, "$installerPath")

Write-Host "Installing $installerPath..."
Start-Process $installerPath -ArgumentList $installerArguments -Wait

Write-Host "Cleanup the downloaded file."
Remove-Item $installerPath -Force
