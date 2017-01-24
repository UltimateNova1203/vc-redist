Write-Output "================================================================"
Write-Output "==Visual Studio Tools for Office Runtime 2010 Redistributables=="
Write-Output "================================================================"
Write-Output "Installing redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vstor2010x64.exe -ArgumentList "/q /norestart" -wait
Write-Output "All finished."