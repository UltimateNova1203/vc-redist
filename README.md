# Visual Redist
Downloads and installs various runtimes for Windows deployment. All installers were initially pulled from Microsoft's Servers. Additional architectures and versions are available on the repo, but are not installed from the script.

Below is what the script will install.

  * .NET Framework 3.5
  * Visual C++ 2005 8.0.61000 (x86 & x64)
  * Visual C++ 2008 9.0.30729.6161 (x86 & x64)
  * Visual C++ 2010 10.0.40219 (x86 & x64)
  * Visual C++ 2012 11.0.61030 / Version 4  (x86 & x64)
  * Visual C++ 2013 12.0.40664 / Version 5 (x86 & x64)
  * Visual C++ 2015-2019 14.29.30133 (x86 & x64)

# Installation
Administrative rights is required to install, as we need to enable both .NET Framework 3.5, as well as install software.

In a PowerShell Admin prompt, run the below commands.
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
.\visual-redist.ps1
```
