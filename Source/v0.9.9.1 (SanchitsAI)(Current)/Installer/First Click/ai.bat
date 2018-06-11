@ECHO OFF
:splash
mode con: cols=146 lines=13
color 09
echo.
echo       ___           ___           ___           ___           ___                       ___           ___                    ___                 
echo      /\  \         /\  \         /\__\         /\  \         /\__\          ___        /\  \         /\  \                  /\  \          ___   
echo     /::\  \       /::\  \       /::[  ]       /::\  \       /:/  /         /\  \       \:\  \       /::\  \                /::\  \        /\  \  
echo    /:/\ \  \     /:/\:\  \     /:[:[  ]      /:/\:\  \     /:/__/          \:\  \       \:\  \     /:/\ \  \              /:/\:\  \       \:\  \ 
echo   _\:\~\ \  \   /::\~\:\  \   /:/[:[  ]__   /:/  \:\  \   /::\  \ ___      /::\__\      /::\  \   _\:\~\ \  \            /::\~\:\  \      /::\__\
echo  /\ \:\ \ \__\ /:/\:\ \:\__\ /:/ [:[ /\__\ /:/__/ \:\__\ /:/\:\  /\__\  __/:/\/__/     /:/\:\__\ /\ \:\ \ \__\          /:/\:\ \:\__\  __/:/\/__/
echo  \:\ \:\ \/__/ \/__\:\/:/  / \/__[:[/:/  / \:\  \  \/__/ \/__\:\/:/  / /\/:/  /       /:/  \/__/ \:\ \:\ \/__/          \/__\:\/:/  / /\/:/  /   
echo   \:\ \:\__\        \::/  /      [:/:/  /   \:\  \            \::/  /  \::/__/       /:/  /       \:\ \:\__\                 \::/  /  \::/__/    
echo    \:\/:/  /        /:/  /       [::/  /     \:\  \           /:/  /    \:\__\       \/__/         \:\/:/  /                 /:/  /    \:\__\    
echo     \::/  /        /:/  /        /:/  /       \:\__\         /:/  /      \/__/                      \::/  /                 /:/  /      \/__/    
echo      \/__/         \/__/         \/__/         \/__/         \/__/                                   \/__/                  \/__/                
echo.
setlocal
title Launching Sanchit's AI Installer
ping localhost -n 5 >nul
@echo off
setlocal
title Installing Sanchit's AI
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
rmdir "C:\Users\%USERNAME%\ai\ai" /s /q
rmdir "C:\Users\%USERNAME%\ai\data" /s /q
rmdir "C:\Users\%USERNAME%\ai\wordbank\command" /s /q
rmdir "C:\Users\%USERNAME%\ai\wordbank\online" /s /q
rmdir "C:\Users\%USERNAME%\ai\wordbank\user" /s /q
rmdir "C:\Users\%USERNAME%\ai\wordbank" /s /q
rmdir "C:\Users\%USERNAME%\ai\extra" /s /q
rmdir "C:\Users\%USERNAME%\ai" /s /q
md "C:\Users\%USERNAME%\ai"
md "C:\Users\%USERNAME%\ai\ai"
md "C:\Users\%USERNAME%\ai\data"
md "C:\Users\%USERNAME%\ai\wordbank"
md "C:\Users\%USERNAME%\ai\wordbank\command" /s /q
md "C:\Users\%USERNAME%\ai\wordbank\online" /s /q
md "C:\Users\%USERNAME%\ai\wordbank\user" /s /q
md "C:\Users\%USERNAME%\ai\extra" /s /q
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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaiwbdown" -OutFile "C:\Users\%USERNAME%\ai\wbdown.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command START C:\Users\%USERNAME%\ai\wbdown.exe
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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaiexdown" -OutFile "C:\Users\%USERNAME%\ai\exdown.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command START C:\Users\%USERNAME%\ai\exdown.exe
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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitai" -OutFile "C:\Users\%USERNAME%\ai\ai\ai.exe">>"%PSScript%"

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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaifavicon" -OutFile "C:\Users\%USERNAME%\ai\data\favicon.ico">>"%PSScript%"

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
echo sLinkFile = "%USERPROFILE%\ai\ai\ai.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\ai\ai\ai.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\ai\data\favicon.ico" >> %SCRIPT%
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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaiupdate" -OutFile "C:\Users\%USERNAME%\ai\data\upai.exe">>"%PSScript%"

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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaiconfig" -OutFile "C:\Users\%USERNAME%\ai\ai\aiconfig.exe">>"%PSScript%"

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
ECHO Invoke-WebRequest "http://tiny.cc/sanchitaitrigger" -OutFile "C:\Users\%USERNAME%\ai\ai\trig.exe">>"%PSScript%"

SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%'"
powershell -Command Move-Item C:\Users\%USERNAME%\ai\ai\trig.exe """C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"""
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
echo sLinkFile = "%USERPROFILE%\ai\data\aiconfig.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\ai\ai\aiconfig.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\ai\data\favicon.ico" >> %SCRIPT%
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
powershell -command START """C:\Users\%USERNAME%\ai\data\aiconfig"""
rmdir "C:\aitemp" /s /q
exit