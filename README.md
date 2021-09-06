# Visual Redist
Downloads and installs various runtimes for Windows deployment.

Files are downloaded from Microsoft's servers.
  * .NET Framework 3.5
  * Visual Studio C++ 2005-2015 x86
  * Visual Studio C++ 2005-2015 x64
  * Visual F# 2.0
  * Visual J# 2.0SE

# Installation
Administrative rights is required to install, as we need to enable both .NET Framework 3.5, as well as install software. All installers are pulled from Microsoft's servers.

In a PowerShell Admin prompt, run the below commands.
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process
.\visual-redist.ps1
```
