echo Set WinRM start type to auto at first boot of box
sc config winrm start= disabled
<<<<<<< HEAD
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce /v StartWinRM /t REG_SZ /f /d "cmd.exe /c \"sc config winrm start= auto ^& sc start winrm\""
=======
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /v StartWinRM /t REG_SZ /f /d "cmd.exe /c \"sc config winrm start= auto ^& sc start winrm\""
>>>>>>> Fix Vagrant start-up issue
