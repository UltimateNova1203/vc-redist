#requires -version 2
<#
.SYNOPSIS
  This script installs and configures WorkstationManager on the local machine
.DESCRIPTION
  WorkstationManager is used to quickly configure and install software and other changes to a Windows machine
.PARAMETER <Parameter_Name>
  <Brief description of parameter input required. Repeat this attribute if required>
.INPUTS
  Downloads installer files from the repo at https://github.com/UltimateNova1203/workstationmanager
.OUTPUTS
  Log file stored in C:\Windows\Temp\workstationmanager.log>
.NOTES
  Version:        1.0
  Author:         UltimateNova1203
  Creation Date:  2016/01/24
  Purpose/Change: Initial script development
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example>
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
##Log File Info
$sLogPath = "C:\Windows\Temp"
$sLogName = "workstationmanager.log"
$sLogFile = Join-Path -Path $sLogPath -ChildPath $sLogName
#-----------------------------------------------------------[Functions]------------------------------------------------------------

<#
Function <FunctionName>{
  Param()
  
  Begin{
    Log-Write -LogPath $sLogFile -LineValue "<description of what is going on>..."
  }
  
  Process{
    Try{
      <code goes here>
    }
    
    Catch{
      Log-Error -LogPath $sLogFile -ErrorDesc $_.Exception -ExitGracefully $True
      Break
    }
  }
  
  End{
    If($?){
      Log-Write -LogPath $sLogFile -LineValue "Completed Successfully."
      Log-Write -LogPath $sLogFile -LineValue " "
    }
  }
}
#>

#-----------------------------------------------------------[Execution]------------------------------------------------------------

#Log-Start -LogPath $sLogPath -LogName $sLogName -ScriptVersion $sScriptVersion
#Script Execution goes here
#Log-Finish -LogPath $sLogFile