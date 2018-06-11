@echo off
SETLOCAL EnableExtensions
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq shortdata.exe"') DO IF %%x == shortdata.exe goto yes
goto no
:yes
powershell -command START """%USERPROFILE%\ai\ai\ai.lnk"""
exit
:no
echo msgbox "The AI Is Currently Checking for Updates. It will launch automaticly after finishing." > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
goto WAIT
:WAIT
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq shortdata.exe"') DO IF %%x == shortdata.exe goto yes
goto WAIT
