Write-Output "========================="
Write-Output "==Visual F# 2.0 Runtime=="
Write-Output "========================="
Write-Output "Installing runtime."
Start-Process \\newfil001\deploymentshare\programs\dependencies\vf2x86.exe -ArgumentList "/q" -wait
Write-Output "All finished."