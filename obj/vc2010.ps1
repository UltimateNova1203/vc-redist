Write-Output "===================================="
Write-Output "==Visual C++ 2010 Redistributables=="
Write-Output "===================================="
Write-Output "Installing x86 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2010x86.exe -ArgumentList "/q /norestart" -wait
Write-Output "Installing x64 redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vc2010x64.exe -ArgumentList "/q /norestart" -wait
Write-Output "All finished."