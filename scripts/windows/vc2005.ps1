Write-Output "===================================="
Write-Output "==Visual C++ 2005 Redistributables=="
Write-Output "===================================="
Write-Output "Installing x86 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2005x86.exe -ArgumentList "/q" -wait
Write-Output "Installing x64 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2005x64.exe -ArgumentList "/q" -wait
Write-Output "All finished."