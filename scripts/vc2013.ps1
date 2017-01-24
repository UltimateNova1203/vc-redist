Write-Output "===================================="
Write-Output "==Visual C++ 2013 Redistributables=="
Write-Output "===================================="
Write-Output "Installing x86 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2013x86.exe -ArgumentList "/install /quiet /norestart" -wait
Write-Output "Installing x64 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2013x64.exe -ArgumentList "/install /quiet /norestart" -wait
Write-Output "All finished."