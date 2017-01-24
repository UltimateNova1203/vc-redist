Write-Output "===================================="
Write-Output "==Visual J# 2.0SE Redistributables=="
Write-Output "===================================="
Write-Output "Installing redistributables."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vj2x64.exe -ArgumentList "/q:a /c:'install /q'" -wait
Write-Output "All finished."