Write-Output "===================================="
Write-Output "==Visual C++ 2008 Redistributables=="
Write-Output "===================================="
Write-Output "Installing x86 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2008x86.exe -ArgumentList "/Q" -wait
Write-Output "Installing x64 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2008x64.exe -ArgumentList "/Q" -wait
Write-Output "All finished."