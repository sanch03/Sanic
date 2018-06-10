@ECHO OFF
:AI Update
call C:\Users\%USERNAME%\ai\data\aiversion.bat
if %version2% EQU 9 goto changenumai
set /a ver2=%version2%+1
set ver1=%version1%
goto wbupdate

:changenumai
set ver2=0
set /a ver1=%version1%+1
goto wbupdate

:wbupdate
call C:\Users\%USERNAME%\ai\data\wbversion.bat
set /a wbver1=%wbversion%+1
goto exupdate

:exupdate
call C:\Users\%USERNAME%\ai\data\extraversion.bat
set /a exver1=%exversion%+1
goto updateall

:updateall
rmdir "C:\Users\%USERNAME%\ai\updatefiles" /s /q
rmdir "C:\Users\%USERNAME%\ai\exfiles" /s /q
md "C:\Users\%USERNAME%\ai\updatefiles"
md "C:\Users\%USERNAME%\ai\exfiles"
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitai%ver1%%ver2% -OutFile C:\Users\%USERNAME%\ai\updatefiles\aiupdate.exe
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiwb%wbver1% -OutFile C:\Users\%USERNAME%\ai\updatefiles\wbupdate.exe
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiex%exver1% -OutFile C:\Users\%USERNAME%\ai\exfiles\extra.zip
if exist "C:\Users\%USERNAME%\ai\updatefiles\aiupdate.exe" goto aiupcon
:wbupst
if exist "C:\Users\%USERNAME%\ai\updatefiles\wbupdate.exe" goto wbupcon
:extrast
if exist "C:\Users\%USERNAME%\ai\exfiles\extra.zip" goto extracon
goto bye

:aiupcon
call C:\Users\%USERNAME%\ai\updatefiles\aiupdate.exe
goto wbupst

:wbupcon
call C:\Users\%USERNAME%\ai\updatefiles\wbupdate.exe
goto extrast

:extracon
setlocal
cd /d %~dp0
Call :100 "C:\users\%username%\ai\exfiles\ex%number2%" "C:\users\%username%\ai\exfiles\ex%number2%.zip"
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
call C:\Users\%USERNAME%\ai\exfiles\ex%number2%\ex%number2%config.exe
goto bye

:bye
if exist "C:\Users\%USERNAME%\ai\data\autostart.exe" goto aist
exit

:aist
powershell -Command START C:\Users\%USERNAME%\ai\data\autostart.exe