Write-Output "========================"
Write-Output "==dotNET 3.5 Framework=="
Write-Output "========================"
$keyPath = "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5\"
if ( -not (Test-Path $keyPath) )
{
	Write-Output "Installing Framework."
	dism /online /enable-feature /featurename:NetFX3 /All /Source:\\newfil001\deploymentshare\programs\dependencies\ /LimitAccess
	Write-Output "Framework Installed."
}
else
{
	Write-Output "Framework is already installed."
}
Write-Output "All finished."