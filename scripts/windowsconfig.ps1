## Menu built in function
function Show-Menu
{
	param (
		[string]$Title = "Windows Setup Script"
	)
	cls
	Write-Host "   ______                                       "
	Write-Host "  |  ___ \                      /\              "
	Write-Host "  | |   | | ___ _   _ ____ ___ /  \   ____ ____ "
	Write-Host "  | |   | |/ _ \ | | / _  (___) /\ \ / ___) _  )"
	Write-Host "  | |   | | |_| \ V ( ( | |  | |__| ( (__( (/ /" 
	Write-Host "  |_|   |_|\___/ \_/ \_||_|  |______|\____)____)"
	Write-Host ""
	Write-Host "============== $Title =============="
	Write-Host "1: Install dotNET 3.5 Framework."
	Write-Host "2: Install Visual C++ 2005 Redistributables."
	Write-Host "3: Install Visual C++ 2008 Redistributables."
	Write-Host "4: Install Visual C++ 2010 Redistributables."
	Write-Host "5: Install Visual C++ 2012 Redistributables."
	Write-Host "6: Install Visual C++ 2013 Redistributables."
	Write-Host "7: Install Visual C++ 2015 Redistributables."
	Write-Host "8: Install Visual F# 2.0 Runtime."
	Write-Host "9: Install Visual J# 2.0SE Redistributables."
	Write-Host "10: Install Visual Studio Tools for Office Runtime 2010 Redistributables."
	Write-Host "11: Install Microsoft Office 2013."
	Write-Host "12: Install Skype for Business 2016."
	Write-Host "Q: Quit."
}

do
{
	Show-Menu
	$input = Read-Host "Please make a selection."
	switch ($input)
	{
		"1" {
			cls
			"You chose to install dotNET 3.5 Framework."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\dotnet35.ps1"' -wait }
		"2" {
			cls
			"You chose to install Visual C++ 2005 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2005.ps1"' -wait }
		"3" {
			cls
			"You chose to install Visual C++ 2008 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2008.ps1"' -wait }
		"4" {
			cls
			"You chose to install Visual C++ 2010 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2010.ps1"' -wait }
		"5" {
			cls
			"You chose to install Visual C++ 2012 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2012.ps1"' -wait }
		"6" {
			cls
			"You chose to install Visual C++ 2013 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2013.ps1"' -wait }
		"7" {
			cls
			"You chose to install Visual C++ 2015 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vc2015.ps1"' -wait }
		"8" {
			cls
			"You chose to install Visual F# 2.0 Runtime."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vf2.ps1"' -wait }
		"9" {
			cls
			"You chose to install Visual J# 2.0SE Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vj2.ps1"' -wait }
		"10" {
			cls
			"You chose to install Visual Studio Tools for Office Runtime 2010 Redistributables."
			Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "\\newfil001\deploymentshare\scripts\windows\vstor2010.ps1"' -wait }
		"11" {
			cls
			"You chose to install Microsoft Office 2013. This does nothing at the moment."		}
		"12" {
			cls
			"You chose to install Skype for Business 2016. This does nothing at the moment."		}
		"Q" {
			return
		}
	}
	pause
}
until ($input -eq 'q')