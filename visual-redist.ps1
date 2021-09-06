#requires -version 2
<#
.SYNOPSIS
  This script installs Visual C++ redistributables.
.NOTES
  Version:        2.1b
  Author:         UltimateNova1203
  Creation Date:  2016/01/24
  Updated Date:   2021/09/05
  Purpose/Change: Rebased
#>
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
#Set Error Action to Silently Continue
$ErrorActionPreference = "SilentlyContinue"
#Dot Source required Function Libraries
. "C:\Scripts\Functions\Logging_Functions.ps1"
#-----------------------------------------------------------[Functions]------------------------------------------------------------


#-----------------------------------------------------------[Execution]------------------------------------------------------------
$OSArch = $env:PROCESSOR_ARCHITECTURE
New-Item -Path C:\visual-redist -ItemType Directory

if ($OSArch -eq "X86" -Or $OSarch -eq "AMD64") {
	#VC2005-x86
	Write-Output "Downloading Visual C++ 2005 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2005-x86.exe" -OutFile C:\visual-redist\vc2005-x86.exe
	Write-Output "Installing Visual C++ 2005 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2005-x86.exe -ArgumentList "/q" -wait
	Write-Output "Visual C++ 2005 x86 Redistributable Installed!"

	#VC2008-x86
	Write-Output "Downloading Visual C++ 2008 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2008-x86.exe" -OutFile C:\visual-redist\vc2008-x86.exe
	Write-Output "Installing Visual C++ 2008 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2008-x86.exe -ArgumentList "/Q" -wait
	Write-Output "Visual C++ 2008 x86 Redistributable Installed!"

	#VC2010-x86
	Write-Output "Downloading Visual C++ 2010 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2010-x86.exe" -OutFile C:\visual-redist\vc2010-x86.exe
	Write-Output "Installing Visual C++ 2010 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2010-x86.exe -ArgumentList "/passive /norestart" -wait
	Write-Output "Visual C++ 2010 x86 Redistributable Installed!"

	#VC2012-x86
	Write-Output "Downloading Visual C++ 2012 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2012-x86.exe" -OutFile C:\visual-redist\vc2012-x86.exe
	Write-Output "Installing Visual C++ 2012 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2012-x86.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2012 x86 Redistributable Installed!"

	#VC2013-x86
	Write-Output "Downloading Visual C++ 2013 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2013-x86.exe" -OutFile C:\visual-redist\vc2013-x86.exe
	Write-Output "Installing Visual C++ 2013 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2013-x86.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2013 x86 Redistributable Installed!"

	#VC2019-x86
	Write-Output "Downloading Visual C++ 2019 x86 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2015=9-x86.exe" -OutFile C:\visual-redist\vc2019-x86.exe
	Write-Output "Installing Visual C++ 2019 x86 Redistributable..."
	Start-Process C:\visual-redist\vc2019-x86.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2019 x86 Redistributable Installed!"
}


if ($OSArch -eq "AMD64") {
	#VC2005-x64
	Write-Output "Downloading Visual C++ 2005 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2005-x64.exe" -OutFile C:\visual-redist\vc2005-x64.exe
	Write-Output "Installing Visual C++ 2005 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2005-x64.exe -ArgumentList "/q" -wait
	Write-Output "Visual C++ 2005 x64 Redistributable Installed!"

	#VC2008-x64
	Write-Output "Downloading Visual C++ 2008 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2008-x64.exe" -OutFile C:\visual-redist\vc2008-x64.exe
	Write-Output "Installing Visual C++ 2008 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2008-x64.exe -ArgumentList "/Q" -Wait
	Write-Output "Visual C++ 2008 x64 Redistributable Installed!"

	#VC2010-x64
	Write-Output "Downloading Visual C++ 2010 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2010-x64.exe" -OutFile C:\visual-redist\vc2010-x64.exe
	Write-Output "Installing Visual C++ 2010 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2010-x64.exe -ArgumentList "/passive /norestart" -Wait
	Write-Output "Visual C++ 2010 x64 Redistributable Installed!"

	#VC2012-x64
	Write-Output "Downloading Visual C++ 2012 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2012-x64.exe" -OutFile C:\visual-redist\vc2012-x64.exe
	Write-Output "Installing Visual C++ 2012 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2012-x64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2012 x64 Redistributable Installed!"

	#VC2013-x64
	Write-Output "Downloading Visual C++ 2013 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2013-x64.exe" -OutFile C:\visual-redist\vc2013-x64.exe
	Write-Output "Installing Visual C++ 2013 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2013-x64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2013 x64 Redistributable Installed!"

	#VC2019-x64
	Write-Output "Downloading Visual C++ 2019 x64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2019-x64.exe" -OutFile C:\visual-redist\vc2019-x64.exe
	Write-Output "Installing Visual C++ 2019 x64 Redistributable..."
	Start-Process C:\visual-redist\vc2019-x64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2019 x64 Redistributable Installed!"
}

if ($OSArch -eq "ARM64") {
	#VC2012-x64
	Write-Output "Downloading Visual C++ 2012 ARM64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2012-arm64.exe" -OutFile C:\visual-redist\vc2012-arm64.exe
	Write-Output "Installing Visual C++ 2012 ARM64 Redistributable..."
	Start-Process C:\visual-redist\vc2012-arm64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2012 ARM64 Redistributable Installed!"

	#VC2013-x64
	Write-Output "Downloading Visual C++ 2013 ARM64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2013-arm64.exe" -OutFile C:\visual-redist\vc2013-arm64.exe
	Write-Output "Installing Visual C++ 2013 ARM64 Redistributable..."
	Start-Process C:\visual-redist\vc2013-arm64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2013 ARM64 Redistributable Installed!"

	#VC2019-x64
	Write-Output "Downloading Visual C++ 2019 ARM64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2019-arm64.exe" -OutFile C:\visual-redist\vc2019-arm64.exe
	Write-Output "Installing Visual C++ 2019 ARM64 Redistributable..."
	Start-Process C:\visual-redist\vc2019-arm64.exe -ArgumentList "/install /passive /norestart" -wait
	Write-Output "Visual C++ 2019 ARM64 Redistributable Installed!"
}

if ($OSArch -eq "IA64") {
	#VC2005-IA64
	Write-Output "Downloading Visual C++ 2005 IA64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2005-ia64.exe" -OutFile C:\visual-redist\vc2005-ia64.exe
	Write-Output "Installing Visual C++ 2005 IA64 Redistributable..."
	Start-Process C:\visual-redist\vc2005-ia64.exe -ArgumentList "/q" -wait
	Write-Output "Visual C++ 2005 IA64 Redistributable Installed!"

	#VC2008-IA64
	Write-Output "Downloading Visual C++ 2008 IA64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2008-ia64.exe" -OutFile C:\visual-redist\vc2008-ia64.exe
	Write-Output "Installing Visual C++ 2008 IA64 Redistributable..."
	Start-Process C:\visual-redist\vc2008-ia64.exe -ArgumentList "/Q" -Wait
	Write-Output "Visual C++ 2008 IA64 Redistributable Installed!"

	#VC2010-IA64
	Write-Output "Downloading Visual C++ 2010 IA64 Redistributable..."
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc/vc2010-ia64.exe" -OutFile C:\visual-redist\vc2010-ia64.exe
	Write-Output "Installing Visual C++ 2010 IA64 Redistributable..."
	Start-Process C:\visual-redist\vc2010-ia64.exe -ArgumentList "/passive /norestart" -Wait
	Write-Output "Visual C++ 2010 IA64 Redistributable Installed!"
}