@ECHO OFF
:splash
mode con: cols=69 lines=13
color 09
echo.
echo       ___           ___           ___                       ___     
echo      /\  \         /\  \         /\__\          ___        /\  \    
echo     /::\  \       /::\  \       /::[  ]        /\  \      /::\  \   
echo    /:/\ \  \     /:/\:\  \     /:[:[  ]        \:\  \    /:/\:\  \  
echo   _\:\~\ \  \   /::\~\:\  \   /:/[:[  ]__      /::\__\  /:/  \:\  \ 
echo  /\ \:\ \ \__\ /:/\:\ \:\__\ /:/ [:[ /\__\  __/:/\/__/ /:/__/ \:\__\
echo  \:\ \:\ \/__/ \/__\:\/:/  / \/__[:[/:/  / /\/:/  /    \:\  \  \/__/
echo   \:\ \:\__\        \::/  /      [:/:/  /  \::/__/      \:\  \      
echo    \:\/:/  /        /:/  /       [::/  /    \:\__\       \:\  \     
echo     \::/  /        /:/  /        /:/  /      \/__/        \:\__\    
echo      \/__/         \/__/         \/__/                     \/__/   
echo. 
setlocal
title Launching Sanic Installer
ping localhost -n 5 >nul
pause
@echo off
setlocal
title Installing Sanic
@echo off
mode con: cols=54 lines=20
color f9
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ----------------------------------------
echo                                         =   0 ]
echo        ----------------------------------------
echo        Unloading Resources...
rmdir "C:\Users\%USERNAME%\sanic\sanic" /s /q
rmdir "C:\Users\%USERNAME%\sanic\data" /s /q
rmdir "C:\Users\%USERNAME%\sanic\wordbank\command" /s /q
rmdir "C:\Users\%USERNAME%\sanic\wordbank\online" /s /q
rmdir "C:\Users\%USERNAME%\sanic\wordbank\user" /s /q
rmdir "C:\Users\%USERNAME%\sanic\wordbank" /s /q
rmdir "C:\Users\%USERNAME%\sanic\extra" /s /q
rmdir "C:\Users\%USERNAME%\sanic" /s /q
md "C:\Users\%USERNAME%\sanic"
md "C:\Users\%USERNAME%\sanic\sanic"
md "C:\Users\%USERNAME%\sanic\data"
md "C:\Users\%USERNAME%\sanic\wordbank"
md "C:\Users\%USERNAME%\sanic\wordbank\command" /s /q
md "C:\Users\%USERNAME%\sanic\wordbank\online" /s /q
md "C:\Users\%USERNAME%\sanic\wordbank\user" /s /q
md "C:\Users\%USERNAME%\sanic\extra" /s /q
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.          Please Wait
echo        ---------------------------------------
echo        []                              =   5 ]
echo        ---------------------------------------
echo        Unloading Resources...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanicwbdown" -OutFile "C:\Users\%USERNAME%\sanic\wbdown.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command START C:\Users\%USERNAME%\sanic\wbdown.exe
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][]                            =  15 ]
echo        ---------------------------------------
echo        Interpreting Built-in-Commands...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ---------------------------------------
echo        [][][]                          =  23 ]
echo        ---------------------------------------
echo        Interpreting Built-in-Commands...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanicexdown" -OutFile "C:\Users\%USERNAME%\sanic\exdown.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command START C:\Users\%USERNAME%\sanic\exdown.exe
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.          Please Wait
echo        ---------------------------------------
echo        [][][][]                        =  30 ]
echo         ---------------------------------------
echo        Interpreting Built-in-Commands...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][][][][]                      =  38 ]
echo        ---------------------------------------
echo        Setting Pre-Installed Variables...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanic" -OutFile "C:\Users\%USERNAME%\sanic\sanic\sanic.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ---------------------------------------
echo        [][][][][]                      =  42 ]
echo        ---------------------------------------
echo        Setting Pre-Installed Variables...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.          Please Wait
echo        ---------------------------------------
echo        [][][][][][]                    =  45 ]
echo        ---------------------------------------
echo        Unloading AI Binaries...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanicfavicon" -OutFile "C:\Users\%USERNAME%\sanic\data\favicon.ico">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][][][][][][]                  =  48 ]
echo        ---------------------------------------
echo        Unloading AI Binaries...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ---------------------------------------
echo        [][][][][][][][]                =  50 ]
echo        ---------------------------------------
echo        Unloading AI Binaries...
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\sanic\sanic\sanic.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\sanic\sanic\sanic.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\sanic\data\favicon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.           Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][]              =  56 ]
echo        ---------------------------------------
echo        Scaning for Error...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][]            =  63 ]
echo        ---------------------------------------
echo        Scaning for Error...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanicupdate" -OutFile "C:\Users\%USERNAME%\sanic\data\upsanic.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][]          =  69 ]
echo        ---------------------------------------
echo        Scaning for Error...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.          Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][][]        =  75 ]
echo        ---------------------------------------
echo        Scaning for Error...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanicconfig" -OutFile "C:\Users\%USERNAME%\sanic\sanic\sanicconfig.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][][][]      =  79 ]
echo        ---------------------------------------
echo        Installing Binaries...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing...        Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][]    =  86 ]
echo        ---------------------------------------
echo        Installing Binaries...
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing.          Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][]  =  90 ]
echo        ---------------------------------------
echo        Installing Binaries...
:PowerShell
SET PSScript=%temp%\~tmpDlFile.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"
ECHO [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls">>"%PSScript%"
ECHO Invoke-WebRequest "http://tiny.cc/sanictrigger" -OutFile "C:\Users\%USERNAME%\sanic\sanic\trig.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command Move-Item C:\Users\%USERNAME%\sanic\sanic\trig.exe """C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"""
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installing..         Please Wait
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][]  =  96 ]
echo        ---------------------------------------
echo        Installing Binaries...
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\sanic\data\sanicconfig.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\sanic\sanic\sanicconfig.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\sanic\data\favicon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Installation Complete
echo        ---------------------------------------
echo        [][][][][][][][][][][][][][][][]= 100 ]
echo        ---------------------------------------
echo        Ready for AI Setup
powershell -command START """C:\Users\%USERNAME%\sanic\data\sanicconfig"""
rmdir "C:\aitemp" /s /q
exit