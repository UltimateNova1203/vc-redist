#requires -version 2
<#
.SYNOPSIS
  This script installs Visual C++ redistributables.
.NOTES
  Version:        2.0
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
function dotNET35 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5\") ) {
		Write-Output "Installing .NET 3.5 Framework..."
		Add-WindowsCapability -Online -Name NetFx3~~~~
		Write-Output ".NET 3.5 Framework Installed!"
	}
	else {
		Write-Output ".NET 3.5 Framework is already installed!"
	}
}

function vc2005 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\c1c4f01781cc94c4c8fb1542c0981a2a") ) {
		Write-Output "Downloading Visual C++ 2005 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2005-x86.exe" -OutFile C:\visual-redist\vc2005-x86.exe
		Write-Output "Installing Visual C++ 2005 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2005-x86.exe -ArgumentList "/q" -wait
		Write-Output "Visual C++ 2005 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2005 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\1af2a8da7e60d0b429d7e6453b3d0182") ) {
		Write-Output "Downloading Visual C++ 2005 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2005-x64.exe" -OutFile C:\visual-redist\vc2005-x64.exe
		Write-Output "Installing Visual C++ 2005 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2005-x64.exe -ArgumentList "/q" -wait
		Write-Output "Visual C++ 2005 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2005 x64 Redistributable is already installed!"
	}
}

function vc2008 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\6E815EB96CCE9A53884E7857C57002F0") ) {
		Write-Output "Downloading Visual C++ 2008 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2008-x86.exe" -OutFile C:\visual-redist\vc2008-x86.exe
		Write-Output "Installing Visual C++ 2008 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2008-x86.exe -ArgumentList "/Q" -wait
		Write-Output "Visual C++ 2008 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2008 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\67D6ECF5CD5FBA732B8B22BAC8DE1B4D") ) {
		Write-Output "Downloading Visual C++ 2008 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2008-x64.exe" -OutFile C:\visual-redist\vc2008-x64.exe
		Write-Output "Installing Visual C++ 2008 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2008-x64.exe -ArgumentList "/Q" -Wait
		Write-Output "Visual C++ 2008 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2008 x64 Redistributable is already installed!"
	}
}

function vc2010 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\1D5E3C0FEDA1E123187686FED06E995A") ) {
		Write-Output "Downloading Visual C++ 2010 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2010-x86.exe" -OutFile C:\visual-redist\vc2010-x86.exe
		Write-Output "Installing Visual C++ 2010 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2010-x86.exe -ArgumentList "/q /norestart" -wait
		Write-Output "Visual C++ 2010 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2010 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Products\1926E8D15D0BCE53481466615F760A7F") ) {
		Write-Output "Downloading Visual C++ 2010 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2010-x64.exe" -OutFile C:\visual-redist\vc2010-x64.exe
		Write-Output "Installing Visual C++ 2010 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2010-x64.exe -ArgumentList "/q /norestart" -Wait
		Write-Output "Visual C++ 2010 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2010 x64 Redistributable is already installed!"
	}
}

function vc2012 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{33d1fd90-4274-48a1-9bc1-97e33d9c2d6f}") ) {
		Write-Output "Downloading Visual C++ 2012 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2012-x86.exe" -OutFile C:\visual-redist\vc2012-x86.exe
		Write-Output "Installing Visual C++ 2012 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2012-x86.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2012 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2012 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{ca67548a-5ebe-413a-b50c-4b9ceb6d66c6}") ) {
		Write-Output "Downloading Visual C++ 2012 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2012-x64.exe" -OutFile C:\visual-redist\vc2012-x64.exe
		Write-Output "Installing Visual C++ 2012 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2012-x64.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2012 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2012 x64 Redistributable is already installed!"
	}
}

function vc2013 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{9dff3540-fc85-4ed5-ac84-9e3c7fd8bece}") ) {
		Write-Output "Downloading Visual C++ 2013 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2013-x86.exe" -OutFile C:\visual-redist\vc2013-x86.exe
		Write-Output "Installing Visual C++ 2013 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2013-x86.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2013 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2013 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{042d26ef-3dbe-4c25-95d3-4c1b11b235a7}") ) {
		Write-Output "Downloading Visual C++ 2013 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2013-x64.exe" -OutFile C:\visual-redist\vc2013-x64.exe
		Write-Output "Installing Visual C++ 2013 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2013-x64.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2013 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2013 x64 Redistributable is already installed!"
	}
}

function vc2019 {
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\VC,redist.x86,x86,14.29,bundle") ) {
		Write-Output "Downloading Visual C++ 2019 x86 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2015=9-x86.exe" -OutFile C:\visual-redist\vc2019-x86.exe
		Write-Output "Installing Visual C++ 2019 x86 Redistributable..."
		Start-Process C:\visual-redist\vc2019-x86.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2019 x86 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2019 x86 Redistributable is already installed!"
	}
	if ( -not (Test-Path "HKLM:\SOFTWARE\Classes\Installer\Dependencies\VC,redist.x64,amd64,14.29,bundle") ) {
		Write-Output "Downloading Visual C++ 2019 x64 Redistributable..."
		Invoke-WebRequest -Uri "https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/vc2019-x64.exe" -OutFile C:\visual-redist\vc2019-x64.exe
		Write-Output "Installing Visual C++ 2019 x64 Redistributable..."
		Start-Process C:\visual-redist\vc2019-x64.exe -ArgumentList "/install /quiet /norestart" -wait
		Write-Output "Visual C++ 2019 x64 Redistributable Installed!"
	}
	else {
		Write-Output "Visual C++ 2019 x64 Redistributable is already installed!"
	}
}

#-----------------------------------------------------------[Execution]------------------------------------------------------------
Write-Output "Creating download directory"
New-Item -Path C:\visual-redist -ItemType Directory
Write-Output ""
Write-Output ""
Write-Output ""
dotNET35
vc2005
vc2008
vc2012
vc2013
vc2019