#requires -version 2
<#
.SYNOPSIS
  This script installs and configures WorkstationManager on the local machine.
.NOTES
  Version:        1.0
  Author:         UltimateNova1203
  Creation Date:  2016/01/24
  Purpose/Change: Initial script development
#>
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
#Set Error Action to Silently Continue
$ErrorActionPreference = "SilentlyContinue"
#Dot Source required Function Libraries
. "C:\Scripts\Functions\Logging_Functions.ps1"
#----------------------------------------------------------[Declarations]----------------------------------------------------------
#Script Version
$sScriptVersion = "1.0"
#Working Folder
$sDestDir = "C:\ClientShare"
#Get current date
$sStartTime = Get-Date
$sScriptRoot = ($MyInvocation.MyCommand.Path | Split-Path | Resolve-Path).ProviderPath
#-----------------------------------------------------------[Functions]------------------------------------------------------------
function PreInstall-WM{
	Write-Output "Initializing WorkstationManager Powershell scripts."
	If (!(Test-Path $sDestDir\workstationmanager.ps1)) {
		Write-Output "WorkstationManager is not installed! Installing files now."
		Install-WM
	}
	else {
		MainMenu-WM
	}
}

function Install-WM{
	New-Item -Path $sDestDir -ItemType Directory
	New-Item -Path $sDestDir\bin -ItemType Directory
	New-Item -Path $sDestDir\bin\x64 -ItemType Directory
	New-Item -Path $sDestDir\bin\x86 -ItemType Directory
	New-Item -Path $sDestDir\script -ItemType Directory
	Copy-Item -Path $sScriptRoot\workstationmanager.ps1 -Destination $sDestDir\
	Write-Output "The program has installed to the directory located at $sDestDir\"
	Write-Output "Please run WorkstationManager from this directory from now on."
	pause
}

function ShowMenu-WM{
	Write-Output "====================================================="
	Write-Output "==   ______                                        =="
	Write-Output "==  |  ___ \                      /\               =="
	Write-Output "==  | |   | | ___ _   _ ____ ___ /  \   ____ ____  =="
	Write-Output "==  | |   | |/ _ \ | | / _  (___) /\ \ / ___) _  ) =="
	Write-Output "==  | |   | | |_| \ V ( ( | |  | |__| ( (__( (/ /  ==" 
	Write-Output "==  |_|   |_|\___/ \_/ \_||_|  |______|\____)____) =="
	Write-Output "====================================================="
	Write-Output "====== WorkstationManager by UltimateNova1203 ======="
	Write-Output "====================================================="
	Write-Output "1: Install dotNET3.5 Redistributables."
	Write-Output "2: Install Visual Studio Redistributables."
	Write-Output "3: Install extra Visual Studio Redistributables."
	Write-Output "Q: Quit."
}

function MainMenu-WM{
	do {
		cls
		ShowMenu-WM
		$input = Read-Host "Please make a selection."
		switch ($input)
		{
			"1" {
				"You chose to install dotNET3.5 Redistributables."
				dotNET35-WM
			}
			"2" {
				"You chose to install Visual Studio Redistributables."
				VCRedist-WM
			}
			"3" {
				"You chose to install extra Visual Studio Redistributables."
				ExtraRedist-WM
			}
			"Q" {
				return
			}
		}
		pause
	}
	until ($input -eq 'q')
}

function dotNET35-WM{
	Write-Output "====================================================="
	Write-Output "=============== dotNET 3.5 Framework ================"
	Write-Output "====================================================="
	$pathdotNET35 = "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5\"
	if ( -not (Test-Path $pathdotNET35) )
	{
		Write-Output "Installing dotNET 3.5 Framework."
		Add-WindowsCapability -Online -Name NetFx3~~~~
		Write-Output "dotNET 3.5 Framework Installed."
	}
	else
	{
		Write-Output "dot NET 3.5 Framework is already installed."
	}
	Write-Output "All finished."
}
function VCRedist-WM{
	function vc2005{
		$pathvc2005x86 = "HKLM:\SOFTWARE\Classes\Installer\Products\c1c4f01781cc94c4c8fb1542c0981a2a"
		$pathvc2005x64 = "HKLM:\SOFTWARE\Classes\Installer\Products\1af2a8da7e60d0b429d7e6453b3d0182"
		$urlvc2005x86 = "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE"
		$urlvc2005x64 = "https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE"
		if ( -not (Test-Path $pathvc2005x86) ) {
			Write-Output "Visual C++ 2005 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2005.exe)) {
				Write-Output "Downloading Visual C++ 2005 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2005x86 -OutFile $sDestDir\bin\x86\vc2005.exe
			}
			Write-Output "Installing Visual C++ 2005 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2005.exe -ArgumentList "/q" -wait
		}
		else {
			Write-Output "Visual C++ 2005 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2005x64) ) {
			Write-Output "Visual C++ 2005 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2005.exe)) {
				Write-Output "Downloading Visual C++ 2005 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2005x64 -OutFile $sDestDir\bin\x64\vc2005.exe
			}
			Write-Output "Installing Visual C++ 2005 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2005.exe -ArgumentList "/q" -wait
		}
		else {
			Write-Output "Visual C++ 2005 x64 Redistributable is already installed!"
		}
	}
	function vc2008{
		$pathvc2008x86 = "HKLM:\SOFTWARE\Classes\Installer\Products\6E815EB96CCE9A53884E7857C57002F0"
		$pathvc2008x64 = "HKLM:\SOFTWARE\Classes\Installer\Products\67D6ECF5CD5FBA732B8B22BAC8DE1B4D"
		$urlvc2008x86 = "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe"
		$urlvc2008x64 = "https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe"
		if ( -not (Test-Path $pathvc2008x86) ) {
			Write-Output "Visual C++ 2008 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2008.exe)) {
				Write-Output "Downloading Visual C++ 2008 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2008x86 -OutFile $sDestDir\bin\x86\vc2008.exe
			}
			Write-Output "Installing Visual C++ 2008 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2008.exe -ArgumentList "/Q" -wait
		}
		else {
			Write-Output "Visual C++ 2008 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2008x64) ) {
			Write-Output "Visual C++ 2008 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2008.exe)) {
				Write-Output "Downloading Visual C++ 2008 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2008x64 -OutFile $sDestDir\bin\x64\vc2008.exe
			}
			Write-Output "Installing Visual C++ 2008 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2008.exe -ArgumentList "/Q" -Wait
		}
		else {
			Write-Output "Visual C++ 2008 x64 Redistributable is already installed!"
		}
	}
	function vc2010{
		$pathvc2010x86 = "HKLM:\SOFTWARE\Classes\Installer\Products\1D5E3C0FEDA1E123187686FED06E995A"
		$pathvc2010x64 = "HKLM:\SOFTWARE\Classes\Installer\Products\1926E8D15D0BCE53481466615F760A7F"
		$urlvc2010x86 = "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe"
		$urlvc2010x64 = "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe"
		if ( -not (Test-Path $pathvc2010x86) ) {
			Write-Output "Visual C++ 2010 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2010.exe)) {
				Write-Output "Downloading Visual C++ 2010 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2010x86 -OutFile $sDestDir\bin\x86\vc2010.exe
			}
			Write-Output "Installing Visual C++ 2010 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2010.exe -ArgumentList "/q /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2010 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2010x64) ) {
			Write-Output "Visual C++ 2010 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2010.exe)) {
				Write-Output "Downloading Visual C++ 2010 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2010x64 -OutFile $sDestDir\bin\x64\vc2010.exe
			}
			Write-Output "Installing Visual C++ 2010 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2010.exe -ArgumentList "/q /norestart" -Wait
		}
		else {
			Write-Output "Visual C++ 2010 x64 Redistributable is already installed!"
		}
	}
	function vc2012{
		$pathvc2012x86 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{33d1fd90-4274-48a1-9bc1-97e33d9c2d6f}"
		$pathvc2012x64 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{ca67548a-5ebe-413a-b50c-4b9ceb6d66c6}"
		$urlvc2012x86 = "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe"
		$urlvc2012x64 = "https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe"
		if ( -not (Test-Path $pathvc2012x86) ) {
			Write-Output "Visual C++ 2012 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2012.exe)) {
				Write-Output "Downloading Visual C++ 2012 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2012x86 -OutFile $sDestDir\bin\x86\vc2012.exe
			}
			Write-Output "Installing Visual C++ 2012 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2012.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2012 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2012x64) ) {
			Write-Output "Visual C++ 2012 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2012.exe)) {
				Write-Output "Downloading Visual C++ 2012 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2012x64 -OutFile $sDestDir\bin\x64\vc2012.exe
			}
			Write-Output "Installing Visual C++ 2012 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2012.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2012 x64 Redistributable is already installed!"
		}
	}
	function vc2013{
		$pathvc2013x86 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{f65db027-aff3-4070-886a-0d87064aabb1}"
		$pathvc2013x64 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{050d4fc8-5d48-4b8f-8972-47c82c46020f}"
		$urlvc2013x86 = "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe"
		$urlvc2013x64 = "https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe"
		if ( -not (Test-Path $pathvc2013x86) ) {
			Write-Output "Visual C++ 2013 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2013.exe)) {
				Write-Output "Downloading Visual C++ 2013 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2013x86 -OutFile $sDestDir\bin\x86\vc2013.exe
			}
			Write-Output "Installing Visual C++ 2013 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2013.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2013 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2013x64) ) {
			Write-Output "Visual C++ 2013 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2013.exe)) {
				Write-Output "Downloading Visual C++ 2013 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2013x64 -OutFile $sDestDir\bin\x64\vc2013.exe
			}
			Write-Output "Installing Visual C++ 2013 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2013.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2013 x64 Redistributable is already installed!"
		}
	}
	function vc2015{
		$pathvc2015x86 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{e2803110-78b3-4664-a479-3611a381656a}"
		$pathvc2015x64 = "HKLM:\SOFTWARE\Classes\Installer\Dependencies\{d992c12e-cab2-426f-bde3-fb8c53950b0d}"
		$urlvc2015x86 = "https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x86.exe"
		$urlvc2015x64 = "https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe"
		if ( -not (Test-Path $pathvc2015x86) ) {
			Write-Output "Visual C++ 2015 x86 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\vc2015.exe)) {
				Write-Output "Downloading Visual C++ 2015 x86 Redistributable."
				Invoke-WebRequest -Uri $urlvc2015x86 -OutFile $sDestDir\bin\x86\vc2015.exe
			}
			Write-Output "Installing Visual C++ 2015 x86 Redistributable."
			Start-Process $sDestDir\bin\x86\vc2015.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2015 x86 Redistributable is already installed!"
		}
		if ( -not (Test-Path $pathvc2015x64) ) {
			Write-Output "Visual C++ 2015 x64 Redistributable is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x64\2015.exe)) {
				Write-Output "Downloading Visual C++ 2015 x64 Redistributable."
				Invoke-WebRequest -Uri $urlvc2015x64 -OutFile $sDestDir\bin\x64\vc2015.exe
			}
			Write-Output "Installing Visual C++ 2015 x64 Redistributable."
			Start-Process $sDestDir\bin\x64\vc2015.exe -ArgumentList "/install /quiet /norestart" -wait
		}
		else {
			Write-Output "Visual C++ 2015 x64 Redistributable is already installed!"
		}
	}
	Write-Output "====================================================="
	Write-Output "========== Visual Studio Redistributables ==========="
	Write-Output "====================================================="
	vc2005
	vc2008
	vc2010
	vc2012
	vc2013
	vc2015
	Write-Output "All finished."
}
function ExtraRedist-WM{
	function fsharp{
		$pathfsharp = "HKLM:\SOFTWARE\Classes\Installer\Products\0003A927A8CB47B3ABD50586EF217DC0"
		$urlfsharp = "https://download.microsoft.com/download/4/B/7/4B782102-D510-4B74-A89A-01B0DA3D153B/fsharp_redist.exe"
		if ( -not (Test-Path $pathfsharp) ) {
			Write-Output "Visual F# 2.0 Runtime is not installed!"
			if ( -not (Test-Path $sDestDir\bin\x86\fsharp.exe)) {
				Write-Output "Downloading Visual F# 2.0 Runtime."
				Invoke-WebRequest -Uri $urlfsharp -OutFile $sDestDir\bin\x86\fsharp.exe
			}
			Write-Output "Installing Visual F# 2.0 Runtime."
			Start-Process $sDestDir\bin\x86\fsharp.exe -ArgumentList "/q" -wait
		}
		else {
			Write-Output "Visual F# 2.0 Runtime is already installed!"
		}
	}
	function jsharp{
		$pathjsharp = "HKLM:\SOFTWARE\Classes\Installer\Products\EE6A5A0BAB8F1B84BB23AB1CE7692C4B"
		$urljsharp = "https://download.microsoft.com/download/f/1/7/f175de5b-e7af-4231-9a65-417611bbedfe/vjredist64.exe"
		$pathdotNET35 = "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5\"
		if ( -not (Test-Path $pathdotNET35)) {
			Write-Output "dotNET 3.5 Framework is not installed!"
			Write-Output "Installing dotNET 3.5 Framework."
			Add-WindowsCapability -Online -Name NetFx3~~~~
			Write-Output "dotNET 3.5 Framework Installed."
			if ( -not (Test-Path "$sDestDir\bin\x64\jsharp.exe")) {
				Write-Output "Downloading Visual J# 2.0SE Redistributable."
				Invoke-WebRequest -Uri $urljsharp -OutFile $sDestDir\bin\x64\jsharp.exe
			}
			else {
				Write-Output "Installing Visual J# 2.0SE Redistributable."
				Start-Process $sDestDir\bin\x64\jsharp.exe -ArgumentList '/q:a /c:"install /q"' -wait
			}
		}
		else {
			if ( -not (Test-Path $pathjsharp)) {
				Write-Output "Visual J# 2.0SE Redistributable is not installed!"
				if ( -not (Test-Path $sDestDir\bin\x64\jsharp.exe)) {
					Write-Output "Downloading Visual J# 2.0SE Redistributable."
					Invoke-WebRequest -Uri $urljsharp -OutFile $sDestDir\bin\x64\jsharp.exe
				}
				Write-Output "Installing Visual J# 2.0SE Redistributable."
				Start-Process $sDestDir\bin\x64\jsharp.exe -ArgumentList '/q:a /c:"install /q"' -wait
			}
			else {
				Write-Output "Visual J# 2.0SE Redistributable is already installed!"
			}
		}
	}
	Write-Output "====================================================="
	Write-Output "======= Extra Visual Studio Redistributables ========"
	Write-Output "====================================================="
	fsharp
	jsharp
	Write-Output "All finished."
}
#-----------------------------------------------------------[Execution]------------------------------------------------------------
#Checks if PowerShell is running as an administrator, and relaunches the script if not
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{   
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
Break
}
cls
param ([string]$Title = "WorkstationManager")
PreInstall-WM 