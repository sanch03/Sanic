@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

:: here comes the rest of your batch-file
setlocal
title Sanchit's AI Installer
color 91
Call :YesNoBox "Do You Wish To Install Sanchit's AI?" "Sanchit's AI Installer"
if "%YesNo%"=="7" (
Call :MessageBox "Sorry to here that, you anwsered no. :(" "Sanchit's AI Installer"
exit /b
)

goto splash
:YesNoBox
REM returns 6 = Yes, 7 = No. Type=4 = Yes/No
set YesNo=
set MsgType=4
set heading=%~2
set message=%~1
echo wscript.echo msgbox(WScript.Arguments(0),%MsgType%,WScript.Arguments(1)) >"%temp%\input.vbs"
for /f "tokens=* delims=" %%a in ('cscript //nologo "%temp%\input.vbs" "%message%" "%heading%"') do set YesNo=%%a
exit /b

:MessageBox
set heading=%~2
set message=%~1
echo msgbox WScript.Arguments(0),0,WScript.Arguments(1) >"%temp%\input.vbs"
cscript //nologo "%temp%\input.vbs" "%message%" "%heading%"
exit /b
:splash
title Launching Sanchit's AI Installer
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
ping localhost -n 5 >nul
set loop=0
rmdir "C:\Users\%USERNAME%\aitemp" /s /q
mkdir "c:\users\%username%\aitemp"
:visual
cls
title Installing Sanchit's AI
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
echo        Starting Installation...    Please Wait
echo        ----------------------------------------
echo                                         =   0 ]
echo        ----------------------------------------
echo        Checking Downloaded Files...
goto %loop%

:0
for /f "delims=" %%i in ('dir /s /b /a-d "c:\users\%username%\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :100 "C:\users\%username%\aitemp" %hi%
exit /b
:100 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:1
for /f "delims=" %%i in ('dir /s /b /a-d "H:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :101 "C:\users\%username%\aitemp" %hi%
exit /b
:101 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:2
for /f "delims=" %%i in ('dir /s /b /a-d "D:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :102 "C:\users\%username%\aitemp" %hi%
exit /b
:102 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:3
for /f "delims=" %%i in ('dir /s /b /a-d "E:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :103 "C:\users\%username%\aitemp" %hi%
exit /b
:103 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:4
for /f "delims=" %%i in ('dir /s /b /a-d "F:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :104 "C:\users\%username%\aitemp" %hi%
exit /b
:104 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:5
for /f "delims=" %%i in ('dir /s /b /a-d "G:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :105 "G:\users\%username%\aitemp" %hi%
exit /b
:105 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:6
for /f "delims=" %%i in ('dir /s /b /a-d "H:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :106 "C:\users\%username%\aitemp" %hi%
exit /b
:106 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:7
for /f "delims=" %%i in ('dir /s /b /a-d "I:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :107 "C:\users\%username%\aitemp" %hi%
exit /b
:107 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:8
for /f "delims=" %%i in ('dir /s /b /a-d "J:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :108 "C:\users\%username%\aitemp" %hi%
exit /b
:108 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:9
for /f "delims=" %%i in ('dir /s /b /a-d "K:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :109 "C:\users\%username%\aitemp" %hi%
exit /b
:109 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:10
for /f "delims=" %%i in ('dir /s /b /a-d "L:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :110 "C:\users\%username%\aitemp" %hi%
exit /b
:110 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:11
for /f "delims=" %%i in ('dir /s /b /a-d "M:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :111 "C:\users\%username%\aitemp" %hi%
exit /b
:111 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:12
for /f "delims=" %%i in ('dir /s /b /a-d "N:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :112 "C:\users\%username%\aitemp" %hi%
exit /b
:112 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:13
for /f "delims=" %%i in ('dir /s /b /a-d "O:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :113 "C:\users\%username%\aitemp" %hi%
exit /b
:113 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:14
for /f "delims=" %%i in ('dir /s /b /a-d "P:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :114 "C:\users\%username%\aitemp" %hi%
exit /b
:114 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:15
for /f "delims=" %%i in ('dir /s /b /a-d "Q:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :115 "C:\users\%username%\aitemp" %hi%
exit /b
:115 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:16
for /f "delims=" %%i in ('dir /s /b /a-d "R:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :116 "C:\users\%username%\aitemp" %hi%
exit /b
:116 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:17
for /f "delims=" %%i in ('dir /s /b /a-d "S:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :117 "C:\users\%username%\aitemp" %hi%
exit /b
:117 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:18
for /f "delims=" %%i in ('dir /s /b /a-d "T:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :118 "C:\users\%username%\aitemp" %hi%
exit /b
:118 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:19
for /f "delims=" %%i in ('dir /s /b /a-d "U:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :119 "C:\users\%username%\aitemp" %hi%
exit /b
:119 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:20
for /f "delims=" %%i in ('dir /s /b /a-d "V:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :120 "C:\users\%username%\aitemp" %hi%
exit /b
:120 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:21
for /f "delims=" %%i in ('dir /s /b /a-d "W:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :121 "C:\users\%username%\aitemp" %hi%
exit /b
:121 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:22
for /f "delims=" %%i in ('dir /s /b /a-d "X:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :122 "C:\users\%username%\aitemp" %hi%
exit /b
:122 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:23
for /f "delims=" %%i in ('dir /s /b /a-d "Y:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :123 "C:\users\%username%\aitemp" %hi%
exit /b
:123 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:24
for /f "delims=" %%i in ('dir /s /b /a-d "Z:\sanchitsai.zip"') do (set hi="%%i")
setlocal
cd /d %~dp0
Call :124 "C:\users\%username%\aitemp" %hi%
exit /b
:124 <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
goto installcheck

:25
cls
mode con: cols=70 lines=8
title Sanchits AI Install Error
color fc
echo.
echo      ERROR!!!
echo      Please download the .zip file again and restart the install.
echo      For best chances download to c:\users\%username%\downloads
echo      Also don't delete the .zip after downloading.
echo.
pause
exit

:installcheck
if exist "C:\Users\%USERNAME%\aitemp\data\aidata.exe" goto ailaunch
set /a loop=%loop%+1
goto visual

:ailaunch
cls
@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\aitemp\ai.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\aitemp\data\aidata.exe" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\aitemp\data\favicon.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
start c:\users\%username%\aitemp\ai
exit
