#requires -version 2
<#
.SYNOPSIS
  Download and install for Avast Antivirus Defintion Files - Offline Installer[Manual Update]
.DESCRIPTION
  Download and install for Avast Antivirus Defintion Files - Offline Installer[Manual Update]
.INPUTS
  None
.OUTPUTS
  Installer downloaded to "C:\tmp\vpsudp.exe"
.NOTES
  Version:           1.1
  Author:            Jeremy Nation
  AUthor Email:      nationjd@me.com
  Creation Date:     February 12, 2017
  Last Modifed Date: February 19, 2017
  Purpose/Change:    Modifed removal of C:\tmp installer
  
.ChangeLog
  Version 1.0 - Initial Script Development
  Version 1.1 - Modifed removal of C:\tmp installer

#>
Import-Module BitsTransfer
Start-BitsTransfer -Source http://vpsnitro.u.avast.com/vpsnitro/vpsupd.exe -Destination C:\tmp\vpsudp.exe
Start-Process -FilePath "C:\tmp\vpsudp.exe" -ArgumentList /silent
Start-Sleep -s 95
Get-ChildItem -Path C:\tmp\vpsudp.exe | Remove-Item
Exit