rmdir "C:\Users\%USERNAME%\ai\exfiles" /s /q
md "C:\Users\%USERNAME%\ai\exfiles"
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiexver -OutFile C:\Users\%USERNAME%\ai\exfiles\exver.bat
call C:\Users\%USERNAME%\ai\exfiles\exver.bat
set ver=%version%
set number=0
set loop=0
:loop
set /a number=%number%+1
powershell -Command Invoke-WebRequest http://tiny.cc/sanchitaiex%number% -OutFile C:\Users\%USERNAME%\ai\exfiles\ex%number%.zip
set /a loop=%loop%+1 
if "%loop%"=="%ver%" goto next
goto loop

:next
set number2=0
set loop2=0
:loop2
set /a number2=%number2%+1
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
powershell -Command START C:\Users\%USERNAME%\ai\exfiles\ex%number2%\ex%number2%config.exe
set /a loop2=%loop2%+1 
if "%loop2%"=="%ver%" goto next2
goto loop2

:next2
exit
