@cls
@echo off
echo ==================================
echo ==Starting PowerShell Subsystems==
echo ==================================
echo        ______                                       
echo       ^|  ___ \                      /\              
echo       ^| ^|   ^| ^| ___ _   _ ____ ___ /  \   ____ ____ 
echo       ^| ^|   ^| ^|/ _ \ ^| ^| / _  (___) /\ \ / ___) _  )
echo       ^| ^|   ^| ^| ^|_^| \ V ( ( ^| ^|  ^| ^|__^| ( (__( (/ / 
echo       ^|_^|   ^|_^|\___/ \_/ \_^|^|_^|  ^|______^|\____)____)
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\windowsconfig.ps1""' -Verb RunAs}"