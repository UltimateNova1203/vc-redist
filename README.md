# Visual Redist
Downloads and installs Visual C++ redistributables for Windows. All installers were initially pulled from Microsoft's Servers, and archived here, as some were delisted.

Below is what the script will install, depending on your OS Architecture.

  * Visual C++ 2005 8.0.61000 (x86, x64, IA64)
  * Visual C++ 2008 9.0.30729.6161 (x86, x64, IA64)
  * Visual C++ 2010 10.0.40219 (x86, x64, IA64)
  * Visual C++ 2012 11.0.61030.0 / Version 4  (x86, x64, ARM64)
  * Visual C++ 2013 12.0.40664.0 / Version 5 (x86, x64, ARM64)
  * Visual C++ 2015-2019 14.29.30133.0 (x86, x64, ARM64)

Runtimes for the below are also available in the repository, though are not installed via the script.

  * DirectX 1.0 4.02.00.0095
  * DirectX 2.0a 4.03.00.1096
  * DirectX 3.0 4.04.00.0068
  * DirectX 5.0 4.05.00.0155
  * DirectX 6.1 4.06.02.0436
  * DirectX 7.0 4.07.00.0700
  * DirectX 8.1b 4.08.01.0901
  * DirectX 8.2 4.08.02.0134
  * DirectX 9.0c 4.09.00.0904
  * Visual C++ 2015 14.0.24212.0 (x86, x64)
  * Visual C++ 2017 14.16.27033.0 (x86, x64, ARM64)
  * Visual F# 2.0 10.0.30319 (x86)
  * Visual J# 2.0 Second Edition (x86, x64)

# Installation
Administrative rights is required to run the script, as it is currently not signed. The Execution Policy will only apply to the current PowerShell process, and will revert to your original setup after the window is closed.

In a PowerShell Admin prompt, run the below commands.
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
$VisualRedistScript = Invoke-WebRequest https://raw.githubusercontent.com/UltimateNova1203/visual-redist/master/visual-redist.ps1 -UseBasicParsing
Invoke-Expression $($VisualRedistScript.Content)
```
